
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sd_dhcp6_client ;


 int dhcp6_client_set_duid_internal (int *,int ,void const*,size_t,int ) ;

int sd_dhcp6_client_set_duid(
                sd_dhcp6_client *client,
                uint16_t duid_type,
                const void *duid,
                size_t duid_len) {
        return dhcp6_client_set_duid_internal(client, duid_type, duid, duid_len, 0);
}
