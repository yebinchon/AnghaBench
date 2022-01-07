
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ readystate; int IHTMLScriptElement_iface; } ;
struct TYPE_4__ {TYPE_2__* script_elem; scalar_t__ size; int * buf; int hres; } ;
typedef TYPE_1__ ScriptBSC ;
typedef int HRESULT ;
typedef int BSCallback ;


 int FIXME (char*,int ) ;
 int IHTMLScriptElement_Release (int *) ;
 int READYSTATE_LOADED ;
 scalar_t__ READYSTATE_LOADING ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int heap_free (int *) ;
 TYPE_1__* impl_from_BSCallback (int *) ;
 int set_script_elem_readystate (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT ScriptBSC_stop_binding(BSCallback *bsc, HRESULT result)
{
    ScriptBSC *This = impl_from_BSCallback(bsc);

    This->hres = result;

    if(SUCCEEDED(result)) {
        if(This->script_elem->readystate == READYSTATE_LOADING)
            set_script_elem_readystate(This->script_elem, READYSTATE_LOADED);
    }else {
        FIXME("binding failed %08x\n", result);
        heap_free(This->buf);
        This->buf = ((void*)0);
        This->size = 0;
    }

    IHTMLScriptElement_Release(&This->script_elem->IHTMLScriptElement_iface);
    This->script_elem = ((void*)0);
    return S_OK;
}
