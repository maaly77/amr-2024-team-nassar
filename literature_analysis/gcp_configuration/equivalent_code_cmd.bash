gcloud compute instances create team-nassar-literature \
    --project=ncbi-2024-amr-codeathon \
    --zone=us-east4-b \
    --machine-type=a3-highgpu-2g \
    --network-interface=network-tier=PREMIUM,nic-type=GVNIC,stack-type=IPV4_ONLY,subnet=default \
    --maintenance-policy=TERMINATE \
    --provisioning-model=STANDARD \
    --service-account=436758014946-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
    --accelerator=count=2,type=nvidia-h100-mega-80gb \
    --create-disk=auto-delete=yes,boot=yes,device-name=instance-20240924-135919,disk-resource-policy=projects/ncbi-2024-amr-codeathon/regions/us-central1/resourcePolicies/default-schedule-1,image=projects/ml-images/global/images/c0-deeplearning-common-gpu-v20240730-debian-11-py310,mode=rw,size=50,type=pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any