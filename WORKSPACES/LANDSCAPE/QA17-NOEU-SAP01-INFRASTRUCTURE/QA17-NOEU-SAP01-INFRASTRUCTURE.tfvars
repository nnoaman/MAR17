#########################################################################################
#                                                                                       #
# This sample defines a deployment that will create the networks and their subnets      #
#                                                                                       #
#########################################################################################

#########################################################################################
#                                                                                       #
# The automation framework supports both creating resources (greenfield) or using       #
# existing resources (brownfield).                                                      #
#                                                                                       #
# For the greenfield scenario the automation defines default names for resources,       #
# if there is a XXXXname variable then the name is customizable.                        #
#                                                                                       #
# For the brownfield scenario the Azure resource identifiers for the resources must     #
# be specified.                                                                         #
#                                                                                       #
#########################################################################################

#########################################################################################
#                                                                                       #
#  Environment definitions                                                              #
#                                                                                       #
#########################################################################################

# The environment value is a mandatory field, it is used for partitioning the environments, for example (PROD and NP)
environment="QA17"

# The location value is a mandatory field, it is used to control where the resources are deployed
location="northeurope"

# The network logical name is mandatory - it is used in the naming convention and should map to the workload virtual network logical name
network_logical_name="SAP01"

# network_address_space is a mandatory parameter when an existing Virtual network is not used
network_address_space = "10.210.0.0/16"

# use_private_endpoint is a boolean flag controlling if the key vaults and storage accounts have private endpoints
use_private_endpoint = false

# use_service_endpoint is a boolean flag controlling if the key vaults and storage accounts have service endpoints
use_service_endpoint = true

#Defines if the SAP VNet will be peered with the control plane VNet
peer_with_control_plane_vnet = true

# Defines if access to the key vaults and storage accounts is restricted to the SAP and deployer VNets
enable_firewall_for_keyvaults_and_storage = false

# Defines if public access is allowed for the storage accounts and key vaults
public_network_access_enabled = true

# place_delete_lock_on_resources, If defined, a delete lock will be placed on the key resources
place_delete_lock_on_resources = false

#########################################################################################
#                                                                                       #
#  Admin Subnet variables                                                               #
#                                                                                       #
#########################################################################################

# admin_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#admin_subnet_name = ""

# admin_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
admin_subnet_address_prefix = "10.210.0.0/19"

# admin_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet to use
#admin_subnet_arm_id = ""

# admin_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#admin_subnet_nsg_name = ""

# admin_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#admin_subnet_nsg_arm_id = ""

#########################################################################################
#                                                                                       #
#  DB Subnet variables                                                                  #
#                                                                                       #
#########################################################################################

# If defined these parameters control the subnet name and the subnet prefix
# db_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#db_subnet_name = ""

# db_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
db_subnet_address_prefix = "10.210.96.0/19"

# db_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet to use
#db_subnet_arm_id = ""

# db_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#db_subnet_nsg_name = ""

# db_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#db_subnet_nsg_arm_id = ""

#########################################################################################
#                                                                                       #
#  App Subnet variables                                                                 #
#                                                                                       #
#########################################################################################

# If defined these parameters control the subnet name and the subnet prefix
# app_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#app_subnet_name = ""

# app_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
app_subnet_address_prefix = "10.210.32.0/19"

# app_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet to use
#app_subnet_arm_id = ""

# app_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#app_subnet_nsg_name = ""

# app_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#app_subnet_nsg_arm_id = ""

#########################################################################################
#                                                                                       #
#  Web Subnet variables                                                                 #
#                                                                                       #
#########################################################################################

# If defined these parameters control the subnet name and the subnet prefix
# web_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#web_subnet_name = ""

# web_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
web_subnet_address_prefix = "10.210.128.0/19"

# web_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet to use
#web_subnet_arm_id = ""

# web_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#web_subnet_nsg_name = ""

# web_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#web_subnet_nsg_arm_id = ""

#########################################################################################
#                                                                                       #
#  ANF Subnet variables                                                                 #
#                                                                                       #
#########################################################################################

# If defined these parameters control the subnet name and the subnet prefix
# anf_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#anf_subnet_name = ""

# anf_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet
#anf_subnet_arm_id = ""

# ANF requires a dedicated subnet, the address space for the subnet is provided with  anf_subnet_address_prefix
# anf_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
#anf_subnet_address_prefix = ""

# $anf_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#anf_subnet_nsg_name = ""

# anf_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing network security group to use
#anf_subnet_nsg_arm_id = ""

#########################################################################################
#                                                                                       #
#  DNS Settings                                                                         #
#                                                                                       #
#########################################################################################

# custom dns subscription
#management_dns_subscription_id = ""

# custom dns resource group name
#management_dns_resourcegroup_name="Private-DNS"

# Subscription for the resource group containing the Private DNS zone for the Privatelink resources

#privatelink_dns_subscription_id = ""

#privatelink_dns_resourcegroup_name = "Privatelink-DNS"

# Defines if a custom dns solution is used
use_custom_dns_a_registration = false

# Defines if the Virtual network for the Virtual machines is registered with DNS
# This also controls the creation of DNS entries for the load balancers
#register_virtual_network_to_dns = true

#register_endpoints_with_dns = true

#########################################################################################
#                                                                                       #
#  Azure Keyvault support                                                               #
#                                                                                       #
#########################################################################################

# The user keyvault is designed to host secrets for the administrative users
# user_keyvault_id is an optional parameter that if provided specifies the Azure resource identifier for an existing keyvault
#user_keyvault_id = ""

# The SPN keyvault is designed to host the SPN credentials used by the automation
# spn_keyvault_id is an optional parameter that if provided specifies the Azure resource identifier for an existing keyvault
#spn_keyvault_id = ""

# enable_purge_control_for_keyvaults is an optional parameter that czan be used to disable the purge protection fro Azure keyvaults
enable_purge_control_for_keyvaults = true

# enable_rbac_authorization_for_keyvault Controls the access policy model for the workload zone keyvault.
enable_rbac_authorization_for_keyvault = false

#########################################################################################
#                                                                                       #
#  Credentials                                                                          #
#                                                                                       #
#########################################################################################

# The automation_username defines the user account used by the automation
automation_username = "azureadm"

# The automation_password is an optional parameter that can be used to provide a password for the automation user
# If empty Terraform will create a password and persist it in keyvault
#automation_password = ""

# The automation_path_to_public_key is an optional parameter that can be used to provide a path to an existing ssh public key file
# If empty Terraform will create the ssh key and persist it in keyvault
#automation_path_to_public_key = ""

# The automation_path_to_private_key is an optional parameter that can be used to provide a path to an existing ssh private key file
# If empty Terraform will create the ssh key and persist it in keyvault
#automation_path_to_private_key = ""


#########################################################################################
#                                                                                       #
#  Storage account details                                                               #
#                                                                                       #
#########################################################################################


# Defines the size of the install volume
install_volume_size = 1024

# install_storage_account_id defines the Azure resource id for the install storage account
#install_storage_account_id = ""

# azurerm_private_endpoint_connection_install_id defines the Azure resource id for the install storage account's private endpoint connection
#install_private_endpoint_id = ""

create_transport_storage = true

# Defines the size of the transport volume
transport_volume_size = 128

# azure_files_transport_storage_account_id defines the Azure resource id for the transport storage account
#transport_storage_account_id = ""

# azurerm_private_endpoint_connection_transport_id defines the Azure resource id for the transport storage accounts private endpoint connection
#transport_private_endpoint_id = ""


# $diagnostics_storage_account_arm_id defines the Azure resource id for the diagnostics storage accounts
#diagnostics_storage_account_arm_id = ""

# witness_storage_account_arm_id defines the Azure resource id for the witness storage accounts
#witness_storage_account_arm_id = ""

# storage_account_replication_type defines the replication type for Azure Files for NFS storage accounts
storage_account_replication_type = "ZRS"


#########################################################################################
#                                                                                       #
#  Resource group details                                                               #
#                                                                                       #
#########################################################################################

# The two resource group name and arm_id can be used to control the naming and the creation of the resource group

# The resourcegroup_name value is optional, it can be used to override the name of the resource group that will be provisioned
#resourcegroup_name = ""

# The resourcegroup_name arm_id is optional, it can be used to provide an existing resource group for the deployment
#resourcegroup_arm_id = ""


#########################################################################################
#                                                                                       #
#  Private DNS support                                                                  #                                                                                       #
#                                                                                       #
#########################################################################################

# If defined provides the DNS label for the Virtual Network
dns_label = "azure.sapcontoso.com"

#If defined provides the lsit of DNS servers to attach to the Virtual NEtwork
#dns_server_list = []

#########################################################################################
#                                                                                       #
#  NFS support                                                                          #
#                                                                                       #
#########################################################################################

# NFS_Provider defines how NFS services are provided to the SAP systems, valid options are "ANF", "AFS", "NFS" or "NONE"
# AFS indicates that Azure Files for NFS is used
# ANF indicates that Azure NetApp Files is used
# NFS indicates that a custom solution is used for NFS
NFS_provider = "AFS"

#########################################################################################
#                                                                                       #
#  Azure NetApp files support                                                           #
#                                                                                       #
#########################################################################################

# ANF_account_name is the name for the Netapp Account
#ANF_account_name = ""

#ANF_service_level is the service level for the NetApp pool
ANF_service_level = "Ultra"

#ANF_pool_name is the ANF pool name
#ANF_pool_name = ""

#ANF_pool_size is the pool size in TB for the NetApp pool
#ANF_pool_size = 0

#ANF_qos_type defines the Quality of Service type of the pool (Auto or Manual)
ANF_qos_type = "Manual"

# ANF_account_arm_id is the Azure resource identifier for an existing Netapp Account
#ANF_account_arm_id = ""

#ANF_use_existing_pool defines if an existing pool is used
#ANF_use_existing_pool = false

#########################################################################################
#                                                                                       #
#  Transport ANF Volume                                                                 #
#                                                                                       #
#########################################################################################

#ANF_transport_volume_use_existing defines if an existing volume is used for transport
#ANF_transport_volume_use_existing = false

#ANF_transport_volume_name is the name of the transport volume
#ANF_transport_volume_name = ""

#ANF_transport_volume_throughput is the throughput for the transport volume
#ANF_transport_volume_throughput = 0

#ANF_transport_volume_size is the size for the transport volume
#ANF_transport_volume_size = 0

#########################################################################################
#                                                                                       #
#  Install ANF Volume                                                                   #
#                                                                                       #
#########################################################################################

#ANF_install_volume_use_existing defines if an existing volume is used for install
#ANF_install_volume_use_existing = false

#ANF_install_volume_name is the name of the install volume
#ANF_install_volume_name = ""

#ANF_install_volume_throughput is the throughput for the install volume
#ANF_install_volume_throughput = 0

#ANF_install_volume_size is the size for the install volume
#ANF_install_volume_size = 0


###########################################################################
#                                                                         #
#                                    ISCSI                                #
#                                                                         #
###########################################################################

/* iscsi subnet information */
# If defined these parameters control the subnet name and the subnet prefix
# iscsi_subnet_name is an optional parameter and should only be used if the default naming is not acceptable
#iscsi_subnet_name = ""

# iscsi_subnet_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing subnet
#iscsi_subnet_arm_id = ""

# iscsi_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
iscsi_subnet_address_prefix = "10.210.64.0/28"

# iscsi_subnet_nsg_arm_id is an optional parameter that if provided specifies Azure resource identifier for the existing nsg
#iscsi_subnet_nsg_arm_id = ""

# iscsi_subnet_nsg_name is an optional parameter and should only be used if the default naming is not acceptable for the network security group name
#iscsi_subnet_nsg_name = ""


###########################################################################
#                                                                         #
#                                ISCSI Devices                            #
#                                                                         #
###########################################################################

# Number of iSCSI devices to be created
#iscsi_count = null

#Size of iSCSI Virtual Machines to be created
#iscsi_size = null

# Defines if the iSCSI devices use DHCP
#iscsi_useDHCP = null

# Defines the Virtual Machine image for the iSCSI devices
#iscsi_image = null

# Defines the Virtual Machine authentication type for the iSCSI devices
#iscsi_authentication_type = null

# Defines the username for the iSCSI devices
#iscsi_authentication_username = null

# Defines the IP Addresses for the iSCSI devices
#iscsi_nic_ips = null

##########################################################################################
#                                                                                        #
#  Terraform deployment parameters (internal)                                            #
#                                                                                        #
##########################################################################################

# - tfstate_resource_id is the Azure resource identifier for the Storage account in the SAP Library
#   that will contain the Terraform state files
# - deployer_tfstate_key is the state file name for the deployer
# These are required parameters, if using the deployment scripts they will be auto populated otherwise they need to be entered

#tfstate_resource_id = ""

#deployer_tfstate_key = ""

# use_spn defines if the deployments are performed using Service Principals or the deployer's managed identiry, true=SPN, false=MSI
use_spn = true


#########################################################################################
#                                                                                       #
#  Utility VM definitions                                                              #
#                                                                                       #
#########################################################################################


# Defines the number of workload _vms to create
utility_vm_count = 0

# Defines the SKU for the workload virtual machine
#utility_vm_size = ""

# Defines if the utility virtual machine uses DHCP
utility_vm_useDHCP = true

# Defines if the utility virtual machine image
#utility_vm_image = {}

# Defines if the utility virtual machine IP
#utility_vm_nic_ips = []

############################################################################################
#                                                                                          #
#                                  Tags for all resources                                  #
#                                                                                          #
############################################################################################

# These tags will be applied to all resources
