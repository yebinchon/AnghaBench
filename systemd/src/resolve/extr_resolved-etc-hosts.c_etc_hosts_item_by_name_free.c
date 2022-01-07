
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* addresses; struct TYPE_4__* name; } ;
typedef TYPE_1__ EtcHostsItemByName ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void etc_hosts_item_by_name_free(EtcHostsItemByName *item) {
        free(item->name);
        free(item->addresses);
        free(item);
}
