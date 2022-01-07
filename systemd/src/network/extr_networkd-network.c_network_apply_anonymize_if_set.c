
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dhcp_send_hostname; int dhcp_use_mtu; int dhcp_use_routes; int dhcp_use_timezone; int dhcp_vendor_class_identifier; int dhcp_client_identifier; int dhcp_anonymize; } ;
typedef TYPE_1__ Network ;


 int DHCP_CLIENT_ID_MAC ;
 int mfree (int ) ;

void network_apply_anonymize_if_set(Network *network) {
        if (!network->dhcp_anonymize)
                return;


        network->dhcp_send_hostname = 0;







        network->dhcp_client_identifier = DHCP_CLIENT_ID_MAC;


        network->dhcp_vendor_class_identifier = mfree(network->dhcp_vendor_class_identifier);
        network->dhcp_use_mtu = 0;


        network->dhcp_use_routes = 1;


        network->dhcp_use_timezone = 0;
}
