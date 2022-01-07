
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t n_items; scalar_t__ items; int children; } ;
typedef TYPE_1__ ItemArray ;


 int free (scalar_t__) ;
 int item_free_contents (scalar_t__) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int set_free (int ) ;

__attribute__((used)) static ItemArray* item_array_free(ItemArray *a) {
        size_t n;

        if (!a)
                return ((void*)0);

        for (n = 0; n < a->n_items; n++)
                item_free_contents(a->items + n);

        set_free(a->children);
        free(a->items);
        return mfree(a);
}
