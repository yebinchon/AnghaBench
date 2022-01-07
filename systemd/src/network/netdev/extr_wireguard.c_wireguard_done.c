
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int peers_with_failed_endpoint; int peers_with_unresolved_endpoint; int peers_by_section; int private_key_file; int private_key; int resolve_retry_event_source; } ;
typedef TYPE_1__ Wireguard ;
typedef TYPE_1__ NetDev ;


 int WG_KEY_LEN ;
 TYPE_1__* WIREGUARD (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int explicit_bzero_safe (int ,int ) ;
 int free (int ) ;
 int hashmap_free_with_destructor (int ,int ) ;
 int sd_event_source_unref (int ) ;
 int set_free (int ) ;
 int wireguard_peer_free ;

__attribute__((used)) static void wireguard_done(NetDev *netdev) {
        Wireguard *w;

        assert(netdev);
        w = WIREGUARD(netdev);
        assert(w);

        sd_event_source_unref(w->resolve_retry_event_source);

        explicit_bzero_safe(w->private_key, WG_KEY_LEN);
        free(w->private_key_file);

        hashmap_free_with_destructor(w->peers_by_section, wireguard_peer_free);
        set_free(w->peers_with_unresolved_endpoint);
        set_free(w->peers_with_failed_endpoint);
}
