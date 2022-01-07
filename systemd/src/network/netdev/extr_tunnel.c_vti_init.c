
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int pmtudisc; } ;
typedef TYPE_1__ Tunnel ;
typedef TYPE_1__ NetDev ;


 scalar_t__ NETDEV_KIND_VTI ;
 TYPE_1__* VTI (TYPE_1__*) ;
 TYPE_1__* VTI6 (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void vti_init(NetDev *n) {
        Tunnel *t;

        assert(n);

        if (n->kind == NETDEV_KIND_VTI)
                t = VTI(n);
        else
                t = VTI6(n);

        assert(t);

        t->pmtudisc = 1;
}
