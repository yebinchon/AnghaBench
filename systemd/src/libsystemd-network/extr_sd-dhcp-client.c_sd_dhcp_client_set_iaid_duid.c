
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int sd_dhcp_client ;


 int dhcp_client_set_iaid_duid_internal (int *,int,int,int ,int ,void const*,size_t,int ) ;

int sd_dhcp_client_set_iaid_duid(
                sd_dhcp_client *client,
                bool iaid_set,
                uint32_t iaid,
                uint16_t duid_type,
                const void *duid,
                size_t duid_len) {
        return dhcp_client_set_iaid_duid_internal(client, 1, iaid_set, iaid, duid_type, duid, duid_len, 0);
}
