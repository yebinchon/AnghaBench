
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sd_netlink_message ;
typedef int sd_netlink ;
typedef int sd_genl_family ;


 int genl_message_new (int *,int ,int ,int ,int **) ;
 int lookup_id (int *,int ,int *) ;

int sd_genl_message_new(sd_netlink *nl, sd_genl_family family, uint8_t cmd, sd_netlink_message **ret) {
        uint16_t id;
        int r;

        r = lookup_id(nl, family, &id);
        if (r < 0)
                return r;

        return genl_message_new(nl, family, id, cmd, ret);
}
