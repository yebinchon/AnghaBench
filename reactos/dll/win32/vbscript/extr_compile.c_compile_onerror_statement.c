
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resume_next; } ;
typedef TYPE_1__ onerror_statement_t ;
typedef int compile_ctx_t ;
typedef int HRESULT ;


 int OP_errmode ;
 int push_instr_int (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_onerror_statement(compile_ctx_t *ctx, onerror_statement_t *stat)
{
    return push_instr_int(ctx, OP_errmode, stat->resume_next);
}
