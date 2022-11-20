FROM semaphoreui/semaphore:latest

ENV \
    SEMAPHORE_DB_DIALECT=bolt \
    SEMAPHORE_ADMIN_PASSWORD=changeme \
    SEMAPHORE_ADMIN_NAME=admin \
    SEMAPHORE_ADMIN_EMAIL=admin@localhost \
    SEMAPHORE_ADMIN=admin \
    VERIFY_CHECKSUM=false \
    PATH="${PATH}:/home/semaphore/bin"


RUN ansible-galaxy collection install kubernetes.core \
    && mkdir /home/semaphore/bin \
    && curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | HELM_INSTALL_DIR=/home/semaphore/bin sh

COPY . /home/semaphore