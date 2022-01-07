
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_1__ JsonVariant ;


 TYPE_1__* json_variant_dereference (TYPE_1__*) ;
 int json_variant_is_regular (TYPE_1__*) ;

__attribute__((used)) static uint16_t json_variant_depth(JsonVariant *v) {

        v = json_variant_dereference(v);
        if (!v)
                return 0;

        if (!json_variant_is_regular(v))
                return 0;

        return v->depth;
}
