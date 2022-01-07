
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ line; scalar_t__ column; scalar_t__ source; } ;
typedef TYPE_1__ JsonVariant ;


 int json_variant_is_regular (TYPE_1__*) ;
 TYPE_1__* json_variant_normalize (TYPE_1__*) ;

__attribute__((used)) static JsonVariant *json_variant_conservative_normalize(JsonVariant *v) {




        if (!v)
                return ((void*)0);

        if (!json_variant_is_regular(v))
                return v;

        if (v->source || v->line > 0 || v->column > 0)
                return v;

        return json_variant_normalize(v);
}
