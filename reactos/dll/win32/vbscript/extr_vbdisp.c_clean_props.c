
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ props; TYPE_1__* desc; int ** arrays; } ;
typedef TYPE_2__ vbdisp_t ;
struct TYPE_4__ {unsigned int array_cnt; unsigned int prop_cnt; } ;


 int SafeArrayDestroy (int *) ;
 int VariantClear (scalar_t__) ;

__attribute__((used)) static void clean_props(vbdisp_t *This)
{
    unsigned i;

    if(!This->desc)
        return;

    for(i=0; i < This->desc->array_cnt; i++) {
        if(This->arrays[i]) {
            SafeArrayDestroy(This->arrays[i]);
            This->arrays[i] = ((void*)0);
        }
    }

    for(i=0; i < This->desc->prop_cnt; i++)
        VariantClear(This->props+i);
}
