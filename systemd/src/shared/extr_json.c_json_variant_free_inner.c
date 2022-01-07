
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t n_elements; int type; int reference; scalar_t__ is_reference; int source; } ;
typedef TYPE_1__ JsonVariant ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int JSON_VARIANT_ARRAY ;
 int JSON_VARIANT_OBJECT ;
 int assert (TYPE_1__*) ;
 int json_source_unref (int ) ;
 int json_variant_is_regular (TYPE_1__*) ;
 int json_variant_unref (int ) ;

__attribute__((used)) static void json_variant_free_inner(JsonVariant *v) {
        assert(v);

        if (!json_variant_is_regular(v))
                return;

        json_source_unref(v->source);

        if (v->is_reference) {
                json_variant_unref(v->reference);
                return;
        }

        if (IN_SET(v->type, JSON_VARIANT_ARRAY, JSON_VARIANT_OBJECT)) {
                size_t i;

                for (i = 0; i < v->n_elements; i++)
                        json_variant_free_inner(v + 1 + i);
        }
}
