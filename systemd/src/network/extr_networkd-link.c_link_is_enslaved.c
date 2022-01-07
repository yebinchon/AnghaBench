
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ master_ifindex; TYPE_1__* network; } ;
struct TYPE_4__ {scalar_t__ bridge; } ;
typedef TYPE_2__ Link ;


 int IFF_SLAVE ;

__attribute__((used)) static bool link_is_enslaved(Link *link) {
        if (link->flags & IFF_SLAVE)

                return 1;

        if (!link->network)
                return 0;

        if (link->master_ifindex > 0 && link->network->bridge)
                return 1;



        return 0;
}
