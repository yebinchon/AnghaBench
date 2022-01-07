
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int ttl; } ;
typedef TYPE_1__ Tunnel ;
typedef TYPE_1__ NetDev ;


 int DEFAULT_TNL_HOP_LIMIT ;
 TYPE_1__* IP6GRE (TYPE_1__*) ;
 TYPE_1__* IP6GRETAP (TYPE_1__*) ;
 scalar_t__ NETDEV_KIND_IP6GRE ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void ip6gre_init(NetDev *n) {
        Tunnel *t;

        assert(n);

        if (n->kind == NETDEV_KIND_IP6GRE)
                t = IP6GRE(n);
        else
                t = IP6GRETAP(n);

        assert(t);

        t->ttl = DEFAULT_TNL_HOP_LIMIT;
}
