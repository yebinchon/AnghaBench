
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v; } ;
typedef TYPE_1__ variant_val_t ;
typedef int exec_ctx_t ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int VarNot (int ,int *) ;
 int release_val (TYPE_1__*) ;
 int stack_pop_val (int *,TYPE_1__*) ;
 int stack_push (int *,int *) ;

__attribute__((used)) static HRESULT interp_not(exec_ctx_t *ctx)
{
    variant_val_t val;
    VARIANT v;
    HRESULT hres;

    TRACE("\n");

    hres = stack_pop_val(ctx, &val);
    if(FAILED(hres))
        return hres;

    hres = VarNot(val.v, &v);
    release_val(&val);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, &v);
}
