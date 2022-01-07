
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int store; int * v; scalar_t__ owned; } ;
typedef TYPE_1__ variant_val_t ;
struct TYPE_8__ {int script; } ;
typedef TYPE_2__ exec_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IDispatch_Release (int ) ;
 int S_OK ;
 scalar_t__ TRUE ;
 scalar_t__ VT_DISPATCH ;
 int V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int get_disp_value (int ,int ,int *) ;
 int stack_pop_deref (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static HRESULT stack_pop_val(exec_ctx_t *ctx, variant_val_t *r)
{
    stack_pop_deref(ctx, r);

    if(V_VT(r->v) == VT_DISPATCH) {
        HRESULT hres;

        hres = get_disp_value(ctx->script, V_DISPATCH(r->v), &r->store);
        if(r->owned)
            IDispatch_Release(V_DISPATCH(r->v));
        if(FAILED(hres))
            return hres;

        r->owned = TRUE;
        r->v = &r->store;
    }

    return S_OK;
}
