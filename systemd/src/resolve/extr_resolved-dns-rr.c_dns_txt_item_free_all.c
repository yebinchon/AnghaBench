
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* items_next; } ;
typedef TYPE_1__ DnsTxtItem ;


 int free (TYPE_1__*) ;

DnsTxtItem *dns_txt_item_free_all(DnsTxtItem *i) {
        DnsTxtItem *n;

        if (!i)
                return ((void*)0);

        n = i->items_next;

        free(i);
        return dns_txt_item_free_all(n);
}
