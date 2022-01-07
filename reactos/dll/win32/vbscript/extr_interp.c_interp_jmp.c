
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
 int instr_jmp (TYPE_3__*,unsigned int const) ;

__attribute__((used)) static HRESULT interp_jmp(exec_ctx_t *ctx)
{
    const unsigned arg = ctx->instr->arg1.uint;

    TRACE("%u\n", arg);

    instr_jmp(ctx, arg);
    return S_OK;
}
