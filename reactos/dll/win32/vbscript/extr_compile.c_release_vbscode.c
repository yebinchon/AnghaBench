
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int bstr_cnt; struct TYPE_5__* instrs; struct TYPE_5__* source; struct TYPE_5__* bstr_pool; int heap; scalar_t__ context; int entry; } ;
typedef TYPE_1__ vbscode_t ;


 int IDispatch_Release (scalar_t__) ;
 int SysFreeString (TYPE_1__) ;
 int heap_free (TYPE_1__*) ;
 int heap_pool_free (int *) ;
 int list_remove (int *) ;

void release_vbscode(vbscode_t *code)
{
    unsigned i;

    list_remove(&code->entry);

    for(i=0; i < code->bstr_cnt; i++)
        SysFreeString(code->bstr_pool[i]);

    if(code->context)
        IDispatch_Release(code->context);
    heap_pool_free(&code->heap);

    heap_free(code->bstr_pool);
    heap_free(code->source);
    heap_free(code->instrs);
    heap_free(code);
}
