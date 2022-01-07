
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n_ref; struct TYPE_7__* parent; scalar_t__ is_embedded; } ;
typedef TYPE_1__ JsonVariant ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int json_variant_free_inner (TYPE_1__*) ;
 int json_variant_is_regular (TYPE_1__*) ;

JsonVariant *json_variant_unref(JsonVariant *v) {
        if (!v)
                return ((void*)0);
        if (!json_variant_is_regular(v))
                return ((void*)0);

        if (v->is_embedded)
                json_variant_unref(v->parent);
        else {
                assert(v->n_ref > 0);
                v->n_ref--;

                if (v->n_ref == 0) {
                        json_variant_free_inner(v);
                        free(v);
                }
        }

        return ((void*)0);
}
