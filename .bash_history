clear
gcloud compute instance-templates create lb-backend-template    --region=us-west1    --network=default    --subnet=default    --tags=allow-health-check    --machine-type=e2-medium    --image-family=debian-11    --image-project=debian-cloud    --metadata=startup-script='#!/bin/bash
     apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'
clear
gcloud compute instance-templates create lb-backend-template    --region=us-west1    --network=default    --subnet=default    --tags=allow-health-check    --machine-type=e2-medium    --image-family=debian-11    --image-project=debian-cloud    --metadata=startup-script='#!/bin/bash
     apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'
clear
gcloud compute instance-templates create lb-backend-template    --region=us-west1    --network=default    --subnet=default    --tags=allow-health-check    --machine-type=e2-medium    --image-family=debian-11    --image-project=debian-cloud    --metadata=startup-script='#!/bin/bash
apt-get update
apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'
gcloud compute instance-groups managed create lb-backend-group    --template=lb-backend-template --size=2 --zone= us-west1-a
gcloud zone
gcloud compute zones
gcloud compute zones list
gcloud compute instance-groups managed create lb-backend-group    --template=lb-backend-template --size=2 --zone=us-west1-c
gcloud compute firewall-rules create fw-allow-health-check   --network=default   --action=allow   --direction=ingress   --source-ranges=130.211.0.0/22,35.191.0.0/16   --target-tags=allow-health-check   --rules=tcp:80
gcloud compute addresses create lb-ipv4-1   --ip-version=IPV4   --global
gcloud compute health-checks create http http-basic-check   --port 80
gcloud compute backend-services create web-backend-service   --protocol=HTTP   --port-name=http   --health-checks=http-basic-check   --global
gcloud compute backend-services add-backend web-backend-service   --instance-group=lb-backend-group   --instance-group-zone=us-west1-c   --global
gcloud compute url-maps create web-map-http     --default-service web-backend-service
gcloud compute target-http-proxies create http-lb-proxy     --url-map web-map-http
gcloud compute forwarding-rules create http-content-rule     --address=lb-ipv4-1    --global     --target-http-proxy=http-lb-proxy     --ports=80
gcloud compute instance-templates create lb-backend-template    --region=us-west1    --network=default    --subnet=default    --tags=allow-health-check    --machine-type=e2-medium    --image-family=debian-11    --image-project=debian-cloud    --metadata=startup-script='#!/bin/bash
apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'
gcloud compute instance-groups managed create lb-backend-group    --template=lb-backend-template --size=2 --zone=us-west1-c
gcloud compute firewall-rules create fw-allow-health-check   --network=default   --action=allow   --direction=ingress   --source-ranges=130.211.0.0/22,35.191.0.0/16   --target-tags=allow-health-check   --rules=tcp:80
gcloud compute addresses create lb-ipv4-1   --ip-version=IPV4   --global
gcloud compute health-checks create http http-basic-check   --port 80
gcloud compute backend-services create web-backend-service   --protocol=HTTP   --port-name=http   --health-checks=http-basic-check   --global
gcloud compute backend-services add-backend web-backend-service   --instance-group=lb-backend-group   --instance-group-zone=   --global
gcloud compute backend-services add-backend web-backend-service   --instance-group=lb-backend-group   --instance-group-zone=us-west1-c   --global
gcloud compute url-maps create web-map-http     --default-service web-backend-service
gcloud compute target-http-proxies create http-lb-proxy     --url-map web-map-http
gcloud compute forwarding-rules create http-content-rule     --address=lb-ipv4-1    --global     --target-http-proxy=http-lb-proxy     --ports=80
gcloud compute backend-services create web-backend-service-new   --protocol=HTTP   --port-name=http   --health-checks=http-basic-check   --global
gcloud compute backend-services add-backend web-backend-service-new   --instance-group=lb-backend-group   --instance-group-zone=us-west1-c   --global
gcloud compute url-maps create web-map-http     --default-service web-backend-service-new
gcloud compute url-maps create web-map-http=new     --default-service web-backend-service-new
gcloud compute url-maps create web-map-http-new     --default-service web-backend-service-new
gcloud logging metrics list
clear
gcloud logging metrics create project-custom-role-no-alert       --log-filter "resource.type="iam_role" 
AND (protoPayload.methodName="google.iam.admin.v1.CreateRole" 
OR protoPayload.methodName="google.iam.admin.v1.DeleteRole" 
OR protoPayload.methodName="google.iam.admin.v1.UpdateRole")
"
clear
gcloud logging metrics create project-custom-role-no-alert      --description "Project with only log metric configured but no alert policy"       --log-filter "resource.type="iam_role" 
AND (protoPayload.methodName="google.iam.admin.v1.CreateRole" 
OR protoPayload.methodName="google.iam.admin.v1.DeleteRole" 
OR protoPayload.methodName="google.iam.admin.v1.UpdateRole")
"
clear
gcloud logging sinks list --project=weslleya-sandbox
gcloud logging sinks list --project=weslleya-sandbox-298814
gcloud logging sinks list --organization=129624834409
gcloud logging sinks list --organization=463866754555
gcloud logging sinks list --project=stackdriver-project-229703
gcloud logging sinks list --organization=129624834409
gcloud alpha services api-keys create --display-name=TESTE_API_KEY 
gcloud sql instances list --format=json | jq '.settings.databaseFlags[] | 
select(.name=="log_error_verbosity")|.value'
gcloud sql instances list --format=json | jq '.settings.databaseFlags[] | 
select(.name=="log_error_verbosity")|.value'
gcloud sql instances describe postgresql-vulnerable-explicit-flags
gcloud dns managed-zones describe ZONENAME --
format="json(dnsName,dnssecConfig.state,dnssecConfig.defaultKeySpecs)"
gcloud dns managed-zones describe ZONENAME --
format="json(dnsName,dnssecConfig.state,dnssecConfig.defaultKeySpecs)"
gcloud dns managed-zones describe ZONENAME --
format="json(dnsName,dnssecConfig.state,dnssecConfig.defaultKeySpecs)"
gcloud dns managed-zones describe not-used-rsasha1 --
format="json(dnsName,dnssecConfig.state,dnssecConfig.defaultKeySpecs)"
gcloud dns managed-zones describe not-used-rsasha1 --format="json(dnsName,dnssecConfig.state,dnssecConfig.defaultKeySpecs)"
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm ECDSAP256SHA256 --zsk-key-length 256   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state off
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm ECDSAP256SHA256 --zsk-key-length 256   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state off
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm SHA256 --zsk-key-length 256   --denial-of-existence NSEC
gcloud dns dns-keys list
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm ECDSAP256SHA256 --zsk-key-length 256   --denial-of-existence NSEC
gcloud dns dns-keys list
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state off
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm RSASHA256 --zsk-key-length 256   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm RSASHA256 --zsk-key-length 1024   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state off
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm RSASHA256 --ksk-key-length 1024   --zsk-algorithm RSASHA256 --zsk-key-length 1024   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm RSASHA256 --zsk-key-length 1024   --denial-of-existence NSEC
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state off
gcloud dns managed-zones update not-used-rsasha1   --dnssec-state on   --ksk-algorithm ECDSAP256SHA256 --ksk-key-length 256   --zsk-algorithm RSASHA1 --zsk-key-length 256   --denial-of-existence NSEC
gcloud sql instances list --format=json | jq '.settings.databaseFlags[] | 
select(.name=="cross db ownership chaining")|.value'
gcloud sql instances list --format=json | jq '.settings.databaseFlags[] | 
select(.name=="cross db ownership chaining")|.value'
jq '.settings.databaseFlags[]
gcloud sql instances list --format=json
gcloud sql instances list --format=json | jq '.settings.databaseFlags[]
gcloud sql instances list --format=json | jq '.settings.databaseFlags[] | select(.name=="cross db ownership chaining")|.value'
gcloud sql instances list --format=json | jq '.settings.databaseFlags[]
select(.name=="cross db ownership chaining")|.value
gcloud organizations get-iam-policy 129624834409
gcloud compute target-https-proxies list
gcloud compute target-ssl-proxies list
gcloud compute target-https-proxies list
gcloud compute target-ssl-proxies list
gcloud compute instances list --format=json
gcloud compute project-info add-metadata --metadata enable-oslogin=FALSE
gcloud essential-contacts list
gcloud essential-contacts list --organization=129624834409
clear
gcloud services api-keys list
gcloud alpha services api-keys create --display-name='API key 2'
gcloud alpha services api-keys update 'API key 1'
gcloud services api-keys list
gcloud alpha services api-keys update 4b60dd71-3291-4557-9080-00a3847329ee
gcloud alpha monitoring policies list --format json
gcloud compute instance-templates create lb-backend-template    --region=us-west1-c    --network=default    --subnet=default    --tags=allow-health-check    --machine-type=e2-medium    --image-family=debian-11    --image-project=debian-cloud    --metadata=startup-script='#!/bin/bash
     apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'
gcloud container clusters describe autopilot-cluster-1   --zone $COMPUTE_ZONE   --format json | jq .binaryAuthorization
echo $COMPUTE_ZONE
gcloud container clusters describe autopilot-cluster-1   --zone us-central1-a   --format json | jq .binaryAuthorization
gcloud container clusters describe autopilot-cluster-1   --zone us-central1   --format json | jq .binaryAuthorization
clear
gcloud container clusters describe autopilot-cluster-1   --zone us-central1   --format json | jq .binaryAuthorization
ls
sudo apt-get update
sudo apt-get install git-all
git --version
mkdir myproject
ls
git init
git config --global user.email "carolina.df@outlook.com"
git config --global user.name "caroldf"
git status
