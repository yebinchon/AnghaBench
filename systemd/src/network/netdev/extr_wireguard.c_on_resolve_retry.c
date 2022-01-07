
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int usec_t ;
typedef int sd_event_source ;
struct TYPE_9__ {int peers_with_failed_endpoint; int peers_with_unresolved_endpoint; } ;
typedef TYPE_1__ Wireguard ;
typedef TYPE_1__ NetDev ;


 int SWAP_TWO (int ,int ) ;
 TYPE_1__* WIREGUARD (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int netdev_is_managed (TYPE_1__*) ;
 int resolve_endpoints (TYPE_1__*) ;
 TYPE_1__* set_isempty (int ) ;

__attribute__((used)) static int on_resolve_retry(sd_event_source *s, usec_t usec, void *userdata) {
        NetDev *netdev = userdata;
        Wireguard *w;

        assert(netdev);
        w = WIREGUARD(netdev);
        assert(w);

        if (!netdev_is_managed(netdev))
                return 0;

        assert(set_isempty(w->peers_with_unresolved_endpoint));

        SWAP_TWO(w->peers_with_unresolved_endpoint, w->peers_with_failed_endpoint);

        resolve_endpoints(netdev);

        return 0;
}
