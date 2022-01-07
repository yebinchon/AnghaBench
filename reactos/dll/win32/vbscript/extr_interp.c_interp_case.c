
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int v; } ;
typedef TYPE_3__ variant_val_t ;
struct TYPE_16__ {TYPE_2__* instr; } ;
typedef TYPE_4__ exec_ctx_t ;
struct TYPE_13__ {unsigned int uint; } ;
struct TYPE_14__ {TYPE_1__ arg1; } ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*,unsigned int const) ;
 scalar_t__ VARCMP_EQ ;
 int instr_jmp (TYPE_4__*,unsigned int const) ;
 int release_val (TYPE_3__*) ;
 scalar_t__ stack_pop_val (TYPE_4__*,TYPE_3__*) ;
 int stack_popn (TYPE_4__*,int) ;
 int stack_top (TYPE_4__*,int ) ;
 scalar_t__ var_cmp (TYPE_4__*,int ,int ) ;

__attribute__((used)) static HRESULT interp_case(exec_ctx_t *ctx)
{
    const unsigned arg = ctx->instr->arg1.uint;
    variant_val_t v;
    HRESULT hres;

    TRACE("%d\n", arg);

    hres = stack_pop_val(ctx, &v);
    if(FAILED(hres))
        return hres;

    hres = var_cmp(ctx, stack_top(ctx, 0), v.v);
    release_val(&v);
    if(FAILED(hres))
        return hres;

    if(hres == VARCMP_EQ) {
        stack_popn(ctx, 1);
        instr_jmp(ctx, arg);
    }else {
        ctx->instr++;
    }

    return S_OK;
}
