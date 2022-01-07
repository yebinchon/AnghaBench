
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t n_elements; struct TYPE_9__* reference; scalar_t__ is_reference; int type; } ;
typedef TYPE_1__ JsonVariant ;


 int IN_SET (int ,int ,int ) ;
 int JSON_VARIANT_ARRAY ;
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_ARRAY ;
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_OBJECT ;
 int JSON_VARIANT_OBJECT ;
 TYPE_1__* json_variant_conservative_normalize (TYPE_1__*) ;
 int json_variant_is_regular (TYPE_1__*) ;
 int log_debug (char*) ;

JsonVariant *json_variant_by_index(JsonVariant *v, size_t idx) {
        if (!v)
                return ((void*)0);
        if (v == JSON_VARIANT_MAGIC_EMPTY_ARRAY ||
            v == JSON_VARIANT_MAGIC_EMPTY_OBJECT)
                return ((void*)0);
        if (!json_variant_is_regular(v))
                goto mismatch;
        if (!IN_SET(v->type, JSON_VARIANT_ARRAY, JSON_VARIANT_OBJECT))
                goto mismatch;
        if (v->is_reference)
                return json_variant_by_index(v->reference, idx);
        if (idx >= v->n_elements)
                return ((void*)0);

        return json_variant_conservative_normalize(v + 1 + idx);

mismatch:
        log_debug("Element in non-array/non-object JSON variant requested by index, returning NULL.");
        return ((void*)0);
}
