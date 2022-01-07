
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int * ctx; TYPE_1__ IDispatchEx_iface; } ;
typedef TYPE_2__ ScriptDisp ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int ScriptDispVtbl ;
 TYPE_2__* heap_alloc_zero (int) ;

HRESULT create_script_disp(script_ctx_t *ctx, ScriptDisp **ret)
{
    ScriptDisp *script_disp;

    script_disp = heap_alloc_zero(sizeof(*script_disp));
    if(!script_disp)
        return E_OUTOFMEMORY;

    script_disp->IDispatchEx_iface.lpVtbl = &ScriptDispVtbl;
    script_disp->ref = 1;
    script_disp->ctx = ctx;

    *ret = script_disp;
    return S_OK;
}
