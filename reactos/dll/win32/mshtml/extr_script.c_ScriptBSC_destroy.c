
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* buf; TYPE_1__* script_elem; } ;
struct TYPE_5__ {int IHTMLScriptElement_iface; } ;
typedef TYPE_2__ ScriptBSC ;
typedef int BSCallback ;


 int IHTMLScriptElement_Release (int *) ;
 int heap_free (TYPE_2__*) ;
 TYPE_2__* impl_from_BSCallback (int *) ;

__attribute__((used)) static void ScriptBSC_destroy(BSCallback *bsc)
{
    ScriptBSC *This = impl_from_BSCallback(bsc);

    if(This->script_elem) {
        IHTMLScriptElement_Release(&This->script_elem->IHTMLScriptElement_iface);
        This->script_elem = ((void*)0);
    }

    heap_free(This->buf);
    heap_free(This);
}
