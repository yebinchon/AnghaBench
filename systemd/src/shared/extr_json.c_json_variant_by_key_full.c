
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ type; size_t n_elements; int reference; scalar_t__ is_reference; } ;
typedef TYPE_1__ JsonVariant ;


 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_OBJECT ;
 scalar_t__ JSON_VARIANT_OBJECT ;
 int JSON_VARIANT_STRING ;
 TYPE_1__* json_variant_by_key (int ,char const*) ;
 TYPE_1__* json_variant_conservative_normalize (TYPE_1__*) ;
 TYPE_1__* json_variant_dereference (TYPE_1__*) ;
 int json_variant_has_type (TYPE_1__*,int ) ;
 int json_variant_is_regular (TYPE_1__*) ;
 int json_variant_string (TYPE_1__*) ;
 int log_debug (char*) ;
 scalar_t__ streq (int ,char const*) ;

JsonVariant *json_variant_by_key_full(JsonVariant *v, const char *key, JsonVariant **ret_key) {
        size_t i;

        if (!v)
                goto not_found;
        if (!key)
                goto not_found;
        if (v == JSON_VARIANT_MAGIC_EMPTY_OBJECT)
                goto not_found;
        if (!json_variant_is_regular(v))
                goto mismatch;
        if (v->type != JSON_VARIANT_OBJECT)
                goto mismatch;
        if (v->is_reference)
                return json_variant_by_key(v->reference, key);

        for (i = 0; i < v->n_elements; i += 2) {
                JsonVariant *p;

                p = json_variant_dereference(v + 1 + i);

                if (!json_variant_has_type(p, JSON_VARIANT_STRING))
                        continue;

                if (streq(json_variant_string(p), key)) {

                        if (ret_key)
                                *ret_key = json_variant_conservative_normalize(v + 1 + i);

                        return json_variant_conservative_normalize(v + 1 + i + 1);
                }
        }

not_found:
        if (ret_key)
                *ret_key = ((void*)0);

        return ((void*)0);

mismatch:
        log_debug("Element in non-object JSON variant requested by key, returning NULL.");
        if (ret_key)
                *ret_key = ((void*)0);

        return ((void*)0);
}
