
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* section; int preshared_key_file; int preshared_key; int public_key; int wireguard; } ;
typedef TYPE_1__ WireguardPeer ;
struct TYPE_5__ {int line; int filename; } ;
typedef int NetDev ;


 int EINVAL ;
 int * NETDEV (int ) ;
 int SYNTHETIC_ERRNO (int) ;
 scalar_t__ eqzero (int ) ;
 int log_netdev_error_errno (int *,int,char*,int ,int ,...) ;
 scalar_t__ section_is_invalid (TYPE_3__*) ;
 int wireguard_read_key_file (int ,int ) ;

__attribute__((used)) static int wireguard_peer_verify(WireguardPeer *peer) {
        NetDev *netdev = NETDEV(peer->wireguard);
        int r;

        if (section_is_invalid(peer->section))
                return -EINVAL;

        if (eqzero(peer->public_key))
                return log_netdev_error_errno(netdev, SYNTHETIC_ERRNO(EINVAL),
                                              "%s: WireGuardPeer section without PublicKey= configured. "
                                              "Ignoring [WireGuardPeer] section from line %u.",
                                              peer->section->filename, peer->section->line);

        r = wireguard_read_key_file(peer->preshared_key_file, peer->preshared_key);
        if (r < 0)
                return log_netdev_error_errno(netdev, r,
                                              "%s: Failed to read preshared key from '%s'. "
                                              "Ignoring [WireGuardPeer] section from line %u.",
                                              peer->section->filename, peer->preshared_key_file,
                                              peer->section->line);

        return 0;
}
