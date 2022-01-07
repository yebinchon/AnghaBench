
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ifname_peer; } ;
typedef TYPE_1__ VxCan ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* VXCAN (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int free (int ) ;

__attribute__((used)) static void vxcan_done(NetDev *n) {
        VxCan *v;

        assert(n);

        v = VXCAN(n);

        assert(v);

        free(v->ifname_peer);
}
