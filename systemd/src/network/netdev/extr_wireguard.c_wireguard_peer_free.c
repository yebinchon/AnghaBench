
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int preshared_key; struct TYPE_10__* preshared_key_file; struct TYPE_10__* endpoint_port; struct TYPE_10__* endpoint_host; struct TYPE_10__* ipmasks; scalar_t__ section; TYPE_1__* wireguard; } ;
typedef TYPE_2__ WireguardPeer ;
typedef TYPE_2__ WireguardIPmask ;
struct TYPE_9__ {int peers_by_section; int peers_with_failed_endpoint; int peers_with_unresolved_endpoint; TYPE_2__* peers; } ;


 int LIST_REMOVE (int ,TYPE_2__*,TYPE_2__*) ;
 int WG_KEY_LEN ;
 int explicit_bzero_safe (int ,int ) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int ipmasks ;
 int network_config_section_free (scalar_t__) ;
 int peers ;
 int set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void wireguard_peer_free(WireguardPeer *peer) {
        WireguardIPmask *mask;

        if (!peer)
                return;

        if (peer->wireguard) {
                LIST_REMOVE(peers, peer->wireguard->peers, peer);

                set_remove(peer->wireguard->peers_with_unresolved_endpoint, peer);
                set_remove(peer->wireguard->peers_with_failed_endpoint, peer);

                if (peer->section)
                        hashmap_remove(peer->wireguard->peers_by_section, peer->section);
        }

        network_config_section_free(peer->section);

        while ((mask = peer->ipmasks)) {
                LIST_REMOVE(ipmasks, peer->ipmasks, mask);
                free(mask);
        }

        free(peer->endpoint_host);
        free(peer->endpoint_port);
        free(peer->preshared_key_file);
        explicit_bzero_safe(peer->preshared_key, WG_KEY_LEN);

        free(peer);
}
