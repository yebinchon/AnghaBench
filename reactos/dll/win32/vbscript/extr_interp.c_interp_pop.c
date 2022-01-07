
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* instr; } ;
typedef TYPE_3__ exec_ctx_t ;
struct TYPE_6__ {unsigned int uint; } ;
struct TYPE_7__ {TYPE_1__ arg1; } ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,unsigned int const) ;
 int stack_popn (TYPE_3__*,unsigned int const) ;

__attribute__((used)) static HRESULT interp_pop(exec_ctx_t *ctx)
{
    const unsigned n = ctx->instr->arg1.uint;

    TRACE("%u\n", n);

    stack_popn(ctx, n);
    return S_OK;
}
