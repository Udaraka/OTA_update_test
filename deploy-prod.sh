
PROJECT_ID=orelhome-producttest-258407
gcloud config set project $PROJECT_ID
gcloud functions deploy insertFirmwaresOnBigquery --runtime nodejs8 --trigger-resource ota-update-test-firmwares --trigger-event google.storage.object.finalize
gcloud functions deploy getDownloadUrl --runtime nodejs8 --trigger-http