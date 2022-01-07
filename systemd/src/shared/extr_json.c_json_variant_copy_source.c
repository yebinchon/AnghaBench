
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int source; int column; int line; } ;
typedef TYPE_1__ JsonVariant ;


 int assert (TYPE_1__*) ;
 int json_source_ref (int ) ;
 int json_variant_is_regular (TYPE_1__*) ;

__attribute__((used)) static void json_variant_copy_source(JsonVariant *v, JsonVariant *from) {
        assert(v);
        assert(from);

        if (!json_variant_is_regular(from))
                return;

        v->line = from->line;
        v->column = from->column;
        v->source = json_source_ref(from->source);
}
