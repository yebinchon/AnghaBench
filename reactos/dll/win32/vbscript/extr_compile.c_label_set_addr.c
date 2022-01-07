
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int instr_cnt; int * labels; } ;
typedef TYPE_1__ compile_ctx_t ;


 unsigned int LABEL_FLAG ;
 int assert (unsigned int) ;

__attribute__((used)) static inline void label_set_addr(compile_ctx_t *ctx, unsigned label)
{
    assert(label & LABEL_FLAG);
    ctx->labels[label & ~LABEL_FLAG] = ctx->instr_cnt;
}
