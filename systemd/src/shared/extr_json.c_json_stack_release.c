
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elements; int n_elements; } ;
typedef TYPE_1__ JsonStack ;


 int assert (TYPE_1__*) ;
 int json_variant_unref_many (int ,int ) ;
 int mfree (int ) ;

__attribute__((used)) static void json_stack_release(JsonStack *s) {
        assert(s);

        json_variant_unref_many(s->elements, s->n_elements);
        s->elements = mfree(s->elements);
}
