
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_ref; struct TYPE_4__* parent; scalar_t__ is_embedded; } ;
typedef TYPE_1__ JsonVariant ;


 int assert (int) ;
 int json_variant_is_regular (TYPE_1__*) ;

__attribute__((used)) static bool json_single_ref(JsonVariant *v) {



        if (!json_variant_is_regular(v))
                return 0;

        if (v->is_embedded)
                return json_single_ref(v->parent);

        assert(v->n_ref > 0);
        return v->n_ref == 1;
}
