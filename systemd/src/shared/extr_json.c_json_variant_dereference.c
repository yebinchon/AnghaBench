
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* reference; int is_reference; } ;
typedef TYPE_1__ JsonVariant ;


 int json_variant_is_regular (TYPE_1__*) ;

__attribute__((used)) static JsonVariant *json_variant_dereference(JsonVariant *v) {



        if (!v)
                return ((void*)0);

        if (!json_variant_is_regular(v))
                return v;

        if (!v->is_reference)
                return v;

        return json_variant_dereference(v->reference);
}
