
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v; } ;
typedef TYPE_1__ variant_val_t ;
typedef int exec_ctx_t ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_NOTIMPL ;
 scalar_t__ FAILED (int) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int S_OK ;




 int V_BOOL (int ) ;
 int V_I2 (int ) ;
 int V_I4 (int ) ;
 int V_VT (int ) ;
 int debugstr_variant (int ) ;
 int release_val (TYPE_1__*) ;
 int stack_pop_val (int *,TYPE_1__*) ;

__attribute__((used)) static int stack_pop_bool(exec_ctx_t *ctx, BOOL *b)
{
    variant_val_t val;
    HRESULT hres;

    hres = stack_pop_val(ctx, &val);
    if(FAILED(hres))
        return hres;

    switch (V_VT(val.v))
    {
    case 131:
        *b = V_BOOL(val.v);
        break;
    case 128:
        *b = FALSE;
        break;
    case 130:
        *b = V_I2(val.v);
        break;
    case 129:
        *b = V_I4(val.v);
        break;
    default:
        FIXME("unsupported for %s\n", debugstr_variant(val.v));
        release_val(&val);
        return E_NOTIMPL;
    }
    return S_OK;
}
