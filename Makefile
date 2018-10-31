UBUNTU_VERSION := 16.04 18.04 latest

ubuntu_image:
	for version in $(UBUNTU_VERSION) ; do \
		docker build -t meffulka/molecule-instance:ubuntu-$$version --build-arg VERSION=$$version ./ubuntu/ ; \
	done

ubuntu_push:
	for version in $(UBUNTU_VERSION) ; do \
		docker push meffulka/molecule-instance:ubuntu-$$version ; \
	done

ubuntu: ubuntu_image ubuntu_push

image: ubuntu_image

push-image: ubuntu_push

.PHONY: ubuntu