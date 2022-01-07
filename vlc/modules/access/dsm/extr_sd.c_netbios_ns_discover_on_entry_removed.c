
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int netbios_ns_entry ;


 int entry_item_remove (int *,int *) ;

__attribute__((used)) static void netbios_ns_discover_on_entry_removed( void *p_opaque,
                                                  netbios_ns_entry *p_entry )
{
    services_discovery_t *p_sd = (services_discovery_t *)p_opaque;

    entry_item_remove( p_sd, p_entry );
}
