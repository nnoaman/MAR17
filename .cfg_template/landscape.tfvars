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
environment="@@ENV@@"

# The location value is a mandatory field, it is used to control where the resources are deployed
location="@@REGION@@"

# The network logical name is mandatory - it is used in the naming convention and should map to the workload virtual network logical name
network_logical_name="@@VNET@@"

# network_address_space is a mandatory parameter when an existing virtual network is not used
network_address_space="10.110.0.0/16"

# admin_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
admin_subnet_address_prefix="10.110.0.0/19"

# db_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
db_subnet_address_prefix="10.110.96.0/19"

# app_subnet_address_prefix is a mandatory parameter if the subnets are not defined in the workload or if existing subnets are not used
app_subnet_address_prefix="10.110.32.0/19"

# The automation_username defines the user account used by the automation
automation_username="azureadm"
