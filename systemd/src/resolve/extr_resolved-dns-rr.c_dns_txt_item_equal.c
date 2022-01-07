
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; struct TYPE_4__* items_next; int data; } ;
typedef TYPE_1__ DnsTxtItem ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

bool dns_txt_item_equal(DnsTxtItem *a, DnsTxtItem *b) {

        if (a == b)
                return 1;

        if (!a != !b)
                return 0;

        if (!a)
                return 1;

        if (a->length != b->length)
                return 0;

        if (memcmp(a->data, b->data, a->length) != 0)
                return 0;

        return dns_txt_item_equal(a->items_next, b->items_next);
}
