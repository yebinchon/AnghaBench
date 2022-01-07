
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sessions_by_section; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ L2tpTunnel ;


 TYPE_1__* L2TP (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int l2tp_session_free ;
 int ordered_hashmap_free_with_destructor (int ,int ) ;

__attribute__((used)) static void l2tp_tunnel_done(NetDev *netdev) {
        L2tpTunnel *t;

        assert(netdev);

        t = L2TP(netdev);

        assert(t);

        ordered_hashmap_free_with_destructor(t->sessions_by_section, l2tp_session_free);
}
