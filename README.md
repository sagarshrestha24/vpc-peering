# CNM-RTC-INFRASTRUCTURE-TERRAGRUNT

### Step-1: VPC Creation for EKS

To create vpc for eks 

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/vpc/cnm-rtc-eks-vpc
terragrunt init
terragrunt plan
terragrunt apply
```

### Step-2: VPC Creation for RDS

To cteate vpc for rds 

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/vpc/cnm-rtc-rds-vpc
terragrunt init
terragrunt plan
terragrunt apply
```

### Step-3: VPC-Peering for eks and rds connection

To peer the vpc connection between rds and eks first we have to create eks and rds vpc
After that we create peering connection

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/vpc-peering/eks-rds-vpc-peering
terragrunt init
terragrunt plan
terragrunt apply
```


### Step-4: EKS-Cluster Creation

To create the eks cluster first we have to create vpc and then create eks with that eks vpc

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/eks-cluster/cnm-cluster
terragrunt init
terragrunt plan
terragrunt apply
```
To access the eks cluster from local 

```
aws eks --region us-east-1 update-kubeconfig --name <cluster-name> --profile <profile-name>
```

### Step-5: EKS-Node Creation

Create the eks node 

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/eks-node/cnm-rtc-nodegroup
terragrunt init
terragrunt plan
terragrunt apply
```

### Step-6: KMS Creation for RDS Volume Encryption

To create KMS 

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/kms/cnm-kms
terragrunt init
terragrunt plan
terragrunt apply
```

### Step-7: RDS Creation(Postgresql)

To create the eks cluster first we have to create vpc and then create rds with that rds vpc

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/rds/postgres-rds
terragrunt init
terragrunt plan
terragrunt apply
```

### Step-8: IAM Role for Service account(Secret Manager Access)

To access the secret manager from eks create the iam role and attached to service account

```
cd hosting-terraform/aws/cnm/rtc/sbx/us-east-1/iam-role-policy-secret/service-account-role
terragrunt init
terragrunt plan
terragrunt apply
```
