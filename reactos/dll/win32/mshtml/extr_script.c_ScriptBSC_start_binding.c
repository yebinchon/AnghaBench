
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scheme; int script_elem; } ;
typedef TYPE_1__ ScriptBSC ;
typedef int HRESULT ;
typedef int BSCallback ;


 int READYSTATE_LOADING ;
 int S_OK ;
 scalar_t__ URL_SCHEME_HTTP ;
 scalar_t__ URL_SCHEME_HTTPS ;
 TYPE_1__* impl_from_BSCallback (int *) ;
 int set_script_elem_readystate (int ,int ) ;

__attribute__((used)) static HRESULT ScriptBSC_start_binding(BSCallback *bsc)
{
    ScriptBSC *This = impl_from_BSCallback(bsc);


    if(This->scheme == URL_SCHEME_HTTPS || This->scheme == URL_SCHEME_HTTP)
        set_script_elem_readystate(This->script_elem, READYSTATE_LOADING);

    return S_OK;
}
