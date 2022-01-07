
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vbsop_t ;
struct TYPE_8__ {int op; } ;
typedef TYPE_2__ instr_t ;
struct TYPE_9__ {size_t instr_size; size_t instr_cnt; TYPE_1__* code; } ;
typedef TYPE_3__ compile_ctx_t ;
struct TYPE_7__ {TYPE_2__* instrs; } ;


 int assert (int) ;
 TYPE_2__* heap_realloc (TYPE_2__*,int) ;

__attribute__((used)) static unsigned push_instr(compile_ctx_t *ctx, vbsop_t op)
{
    assert(ctx->instr_size && ctx->instr_size >= ctx->instr_cnt);

    if(ctx->instr_size == ctx->instr_cnt) {
        instr_t *new_instr;

        new_instr = heap_realloc(ctx->code->instrs, ctx->instr_size*2*sizeof(instr_t));
        if(!new_instr)
            return 0;

        ctx->code->instrs = new_instr;
        ctx->instr_size *= 2;
    }

    ctx->code->instrs[ctx->instr_cnt].op = op;
    return ctx->instr_cnt++;
}
