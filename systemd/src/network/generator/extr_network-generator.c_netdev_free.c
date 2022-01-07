
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int ifname; } ;
typedef TYPE_1__ NetDev ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static NetDev *netdev_free(NetDev *netdev) {
        if (!netdev)
                return ((void*)0);

        free(netdev->ifname);
        free(netdev->kind);
        return mfree(netdev);
}
