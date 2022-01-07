
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int no_address; void* by_name; void* by_address; } ;
typedef TYPE_1__ EtcHosts ;


 int etc_hosts_item_by_name_free ;
 int etc_hosts_item_free ;
 void* hashmap_free_with_destructor (void*,int ) ;
 int set_free_free (int ) ;

void etc_hosts_free(EtcHosts *hosts) {
        hosts->by_address = hashmap_free_with_destructor(hosts->by_address, etc_hosts_item_free);
        hosts->by_name = hashmap_free_with_destructor(hosts->by_name, etc_hosts_item_by_name_free);
        hosts->no_address = set_free_free(hosts->no_address);
}
