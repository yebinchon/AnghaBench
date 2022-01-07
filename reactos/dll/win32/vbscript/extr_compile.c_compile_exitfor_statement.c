
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ for_end_label; scalar_t__ stack_use; struct TYPE_6__* next; } ;
typedef TYPE_1__ statement_ctx_t ;
struct TYPE_7__ {TYPE_1__* stat_ctx; } ;
typedef TYPE_2__ compile_ctx_t ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int OP_jmp ;
 int OP_pop ;
 int push_instr_addr (TYPE_2__*,int ,scalar_t__) ;
 int push_instr_uint (TYPE_2__*,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_exitfor_statement(compile_ctx_t *ctx)
{
    statement_ctx_t *iter;
    unsigned pop_cnt = 0;

    for(iter = ctx->stat_ctx; iter; iter = iter->next) {
        pop_cnt += iter->stack_use;
        if(iter->for_end_label)
            break;
    }
    if(!iter) {
        FIXME("Exit For outside For loop\n");
        return E_FAIL;
    }

    if(pop_cnt) {
        HRESULT hres;

        hres = push_instr_uint(ctx, OP_pop, pop_cnt);
        if(FAILED(hres))
            return hres;
    }

    return push_instr_addr(ctx, OP_jmp, iter->for_end_label);
}
