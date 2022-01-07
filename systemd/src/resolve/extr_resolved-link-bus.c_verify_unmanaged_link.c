
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_error ;
struct TYPE_4__ {int flags; int ifname; scalar_t__ is_managed; } ;
typedef TYPE_1__ Link ;


 int BUS_ERROR_LINK_BUSY ;
 int IFF_LOOPBACK ;
 int assert (TYPE_1__*) ;
 int sd_bus_error_setf (int *,int ,char*,int ) ;

__attribute__((used)) static int verify_unmanaged_link(Link *l, sd_bus_error *error) {
        assert(l);

        if (l->flags & IFF_LOOPBACK)
                return sd_bus_error_setf(error, BUS_ERROR_LINK_BUSY, "Link %s is loopback device.", l->ifname);
        if (l->is_managed)
                return sd_bus_error_setf(error, BUS_ERROR_LINK_BUSY, "Link %s is managed.", l->ifname);

        return 0;
}
