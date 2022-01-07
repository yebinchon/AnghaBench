
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* instr; } ;
typedef TYPE_3__ exec_ctx_t ;
struct TYPE_7__ {unsigned int uint; } ;
struct TYPE_8__ {TYPE_1__ arg1; } ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,unsigned int const) ;
 int instr_jmp (TYPE_3__*,unsigned int) ;
 int stack_pop_bool (TYPE_3__*,scalar_t__*) ;

__attribute__((used)) static HRESULT interp_jmp_true(exec_ctx_t *ctx)
{
    const unsigned arg = ctx->instr->arg1.uint;
    HRESULT hres;
    BOOL b;

    TRACE("%u\n", arg);

    hres = stack_pop_bool(ctx, &b);
    if(FAILED(hres))
        return hres;

    if(b)
        instr_jmp(ctx, ctx->instr->arg1.uint);
    else
        ctx->instr++;
    return S_OK;
}
