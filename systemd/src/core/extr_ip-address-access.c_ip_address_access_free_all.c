
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* items_next; } ;
typedef TYPE_1__ IPAddressAccessItem ;


 int free (TYPE_1__*) ;

IPAddressAccessItem* ip_address_access_free_all(IPAddressAccessItem *first) {
        IPAddressAccessItem *next, *p = first;

        while (p) {
                next = p->items_next;
                free(p);

                p = next;
        }

        return ((void*)0);
}
