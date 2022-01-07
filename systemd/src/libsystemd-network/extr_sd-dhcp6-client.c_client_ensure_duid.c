
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ duid_len; int duid; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int dhcp_identifier_set_duid_en (int *,scalar_t__*) ;

__attribute__((used)) static int client_ensure_duid(sd_dhcp6_client *client) {
        if (client->duid_len != 0)
                return 0;

        return dhcp_identifier_set_duid_en(&client->duid, &client->duid_len);
}
