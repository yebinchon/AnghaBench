
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * instr; } ;
typedef TYPE_1__ exec_ctx_t ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;

__attribute__((used)) static HRESULT interp_ret(exec_ctx_t *ctx)
{
    TRACE("\n");

    ctx->instr = ((void*)0);
    return S_OK;
}
