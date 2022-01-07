
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int sd_dhcp6_client ;


 int DUID_TYPE_LLT ;
 int dhcp6_client_set_duid_internal (int *,int ,int *,int ,int ) ;

int sd_dhcp6_client_set_duid_llt(
                sd_dhcp6_client *client,
                usec_t llt_time) {
        return dhcp6_client_set_duid_internal(client, DUID_TYPE_LLT, ((void*)0), 0, llt_time);
}
