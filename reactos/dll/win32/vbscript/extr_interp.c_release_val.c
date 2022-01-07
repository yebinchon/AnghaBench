
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; scalar_t__ owned; } ;
typedef TYPE_1__ variant_val_t ;


 int VariantClear (int ) ;

__attribute__((used)) static inline void release_val(variant_val_t *v)
{
    if(v->owned)
        VariantClear(v->v);
}
