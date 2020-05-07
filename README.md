This implements and extends the [Managing Google Cloud projects with Terraform](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform) tutorial availabe on Google [Community Tutorials](https://cloud.google.com/community).


Before jumping in and running Terraform against GCP, using the [Google Cloud Platform Provider](https://www.terraform.io/docs/providers/google/index.html) there are several steps to get up and running.


Linux Academy's [Deploying Resources to GCP with Terraform](https://linuxacademy.com/cp/modules/view/id/402) follows through the same steps and may also be a good learning resource.


# Assumptions

1. This assumes you are just working with a personal account and don't have access to an organization id.
2. You have the gcloud-sdk [installed](https://cloud.google.com/sdk/install) and are [authenticated](https://cloud.google.com/sdk/gcloud/reference/auth/login).



# Create the GCP project

It's possible to go ahead and create a project via the cloud [console](https://console.cloud.google.com/) but it's faster and easier to this and the next steps from the command line.


## Enable the required Google Cloud API's

# Setup environment variables

Even though we'll configure our environment via [tfvar](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files) it'll make it easier to get started with setting some environment variables.
