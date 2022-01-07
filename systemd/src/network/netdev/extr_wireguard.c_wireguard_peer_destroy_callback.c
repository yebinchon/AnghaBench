
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int section; struct TYPE_6__* wireguard; } ;
typedef TYPE_1__ WireguardPeer ;
typedef int NetDev ;


 int * NETDEV (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int netdev_unref (int *) ;
 scalar_t__ section_is_invalid (int ) ;
 int wireguard_peer_free (TYPE_1__*) ;

__attribute__((used)) static void wireguard_peer_destroy_callback(WireguardPeer *peer) {
        NetDev *netdev;

        assert(peer);
        assert(peer->wireguard);

        netdev = NETDEV(peer->wireguard);

        if (section_is_invalid(peer->section))
                wireguard_peer_free(peer);

        netdev_unref(netdev);
}
