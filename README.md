# Cloud Run Server in Bash

[![Run on Google Cloud](https://storage.googleapis.com/cloudrun/button.svg)](https://deploy.cloud.run)

This is a sample repository that runs a "server" in bash that can be deployed on
Google Cloud Run.

See also [https://github.com/matti/google-cloud-run-shell](https://github.com/matti/google-cloud-run-shell) for real shell access

## Setup

1.  Enable Cloud Build and Cloud Run:

    ```sh
    gcloud services enable --project "${PROJECT_ID}" \
      cloudbuild.googleapis.com \
      run.googleapis.com
    ```

1.  Build the container:

    ```sh
    gcloud builds submit \
      --project "${PROJECT_ID}" \
      --tag "gcr.io/${PROJECT_ID}/hello-world-bash" \
      .
    ```

1.  Deploy the container:

    ```sh
    gcloud beta run deploy "hello-world-bash" \
      --project "${PROJECT_ID}" \
      --platform "managed" \
      --region "us-central1" \
      --image "gcr.io/${PROJECT_ID}/hello-world-bash" \
      --allow-unauthenticated
    ```

1.  That's it!
