
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t serverid_len; int * serverid; } ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int EINVAL ;
 int ENOMSG ;
 int assert_return (TYPE_1__*,int ) ;

int dhcp6_lease_get_serverid(sd_dhcp6_lease *lease, uint8_t **id, size_t *len) {
        assert_return(lease, -EINVAL);

        if (!lease->serverid)
                return -ENOMSG;

        if (id)
                *id = lease->serverid;
        if (len)
                *len = lease->serverid_len;

        return 0;
}
