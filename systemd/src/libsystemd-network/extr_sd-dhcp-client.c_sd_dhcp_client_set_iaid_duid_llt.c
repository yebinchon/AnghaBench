
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint32_t ;
typedef int sd_dhcp_client ;


 int DUID_TYPE_LLT ;
 int dhcp_client_set_iaid_duid_internal (int *,int,int,int ,int ,int *,int ,int ) ;

int sd_dhcp_client_set_iaid_duid_llt(
                sd_dhcp_client *client,
                bool iaid_set,
                uint32_t iaid,
                usec_t llt_time) {
        return dhcp_client_set_iaid_duid_internal(client, 1, iaid_set, iaid, DUID_TYPE_LLT, ((void*)0), 0, llt_time);
}
