
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int names; } ;
typedef TYPE_1__ EtcHostsItem ;


 int free (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void etc_hosts_item_free(EtcHostsItem *item) {
        strv_free(item->names);
        free(item);
}
