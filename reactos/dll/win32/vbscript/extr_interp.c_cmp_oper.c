
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v; } ;
typedef TYPE_1__ variant_val_t ;
typedef int exec_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int release_val (TYPE_1__*) ;
 int stack_pop_val (int *,TYPE_1__*) ;
 int var_cmp (int *,int ,int ) ;

__attribute__((used)) static HRESULT cmp_oper(exec_ctx_t *ctx)
{
    variant_val_t l, r;
    HRESULT hres;

    hres = stack_pop_val(ctx, &r);
    if(FAILED(hres))
        return hres;

    hres = stack_pop_val(ctx, &l);
    if(SUCCEEDED(hres)) {
        hres = var_cmp(ctx, l.v, r.v);
        release_val(&l);
    }

    release_val(&r);
    return hres;
}
