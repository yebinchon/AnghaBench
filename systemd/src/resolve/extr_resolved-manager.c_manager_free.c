
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int trust_anchor; int dnssd_services; int mdns_hostname; int llmnr_hostname; int full_hostname; int hostname_fd; int hostname_event_source; int mdns_host_ipv6_key; int mdns_host_ipv4_key; int llmnr_host_ipv6_key; int llmnr_host_ipv4_key; int event; int sigrtmin1_event_source; int sigusr2_event_source; int sigusr1_event_source; int bus; int polkit_registry; int rtnl_event_source; int rtnl; int network_monitor; int network_event_source; int dns_transactions; int links; scalar_t__ dns_streams; int unicast_scope; scalar_t__ dns_queries; int search_domains; int fallback_dns_servers; int dns_servers; } ;
typedef TYPE_1__ Manager ;
typedef int Link ;
typedef int DnssdService ;


 int bus_verify_polkit_async_registry_free (int ) ;
 int dns_query_free (scalar_t__) ;
 int dns_resource_key_unref (int ) ;
 int dns_scope_free (int ) ;
 int dns_search_domain_unlink_all (int ) ;
 int dns_server_unlink_all (int ) ;
 int dns_stream_unref (scalar_t__) ;
 int dns_trust_anchor_flush (int *) ;
 int dnssd_service_free (int *) ;
 int dnstls_manager_free (TYPE_1__*) ;
 int free (int ) ;
 void* hashmap_first (int ) ;
 int hashmap_free (int ) ;
 int link_free (int *) ;
 int manager_dns_stub_stop (TYPE_1__*) ;
 int manager_etc_hosts_flush (TYPE_1__*) ;
 int manager_llmnr_stop (TYPE_1__*) ;
 int manager_mdns_stop (TYPE_1__*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int sd_netlink_unref (int ) ;
 int sd_network_monitor_unref (int ) ;

Manager *manager_free(Manager *m) {
        Link *l;
        DnssdService *s;

        if (!m)
                return ((void*)0);

        dns_server_unlink_all(m->dns_servers);
        dns_server_unlink_all(m->fallback_dns_servers);
        dns_search_domain_unlink_all(m->search_domains);

        while ((l = hashmap_first(m->links)))
               link_free(l);

        while (m->dns_queries)
                dns_query_free(m->dns_queries);

        dns_scope_free(m->unicast_scope);



        while (m->dns_streams)
                dns_stream_unref(m->dns_streams);





        hashmap_free(m->links);
        hashmap_free(m->dns_transactions);

        sd_event_source_unref(m->network_event_source);
        sd_network_monitor_unref(m->network_monitor);

        sd_netlink_unref(m->rtnl);
        sd_event_source_unref(m->rtnl_event_source);

        manager_llmnr_stop(m);
        manager_mdns_stop(m);
        manager_dns_stub_stop(m);

        bus_verify_polkit_async_registry_free(m->polkit_registry);

        sd_bus_flush_close_unref(m->bus);

        sd_event_source_unref(m->sigusr1_event_source);
        sd_event_source_unref(m->sigusr2_event_source);
        sd_event_source_unref(m->sigrtmin1_event_source);

        sd_event_unref(m->event);

        dns_resource_key_unref(m->llmnr_host_ipv4_key);
        dns_resource_key_unref(m->llmnr_host_ipv6_key);
        dns_resource_key_unref(m->mdns_host_ipv4_key);
        dns_resource_key_unref(m->mdns_host_ipv6_key);

        sd_event_source_unref(m->hostname_event_source);
        safe_close(m->hostname_fd);

        free(m->full_hostname);
        free(m->llmnr_hostname);
        free(m->mdns_hostname);

        while ((s = hashmap_first(m->dnssd_services)))
               dnssd_service_free(s);
        hashmap_free(m->dnssd_services);

        dns_trust_anchor_flush(&m->trust_anchor);
        manager_etc_hosts_flush(m);

        return mfree(m);
}
