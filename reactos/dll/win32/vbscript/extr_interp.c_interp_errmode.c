
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int resume_next; TYPE_3__* script; TYPE_2__* instr; } ;
typedef TYPE_4__ exec_ctx_t ;
struct TYPE_8__ {int err_number; } ;
struct TYPE_6__ {int uint; } ;
struct TYPE_7__ {TYPE_1__ arg1; } ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int const) ;

__attribute__((used)) static HRESULT interp_errmode(exec_ctx_t *ctx)
{
    const int err_mode = ctx->instr->arg1.uint;

    TRACE("%d\n", err_mode);

    ctx->resume_next = err_mode;
    ctx->script->err_number = S_OK;
    return S_OK;
}
