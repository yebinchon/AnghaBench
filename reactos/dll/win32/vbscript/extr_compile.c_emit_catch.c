
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int instr_cnt; } ;
typedef TYPE_1__ compile_ctx_t ;
typedef int BOOL ;


 int emit_catch_jmp (TYPE_1__*,unsigned int,int ) ;

__attribute__((used)) static inline BOOL emit_catch(compile_ctx_t *ctx, unsigned off)
{
    return emit_catch_jmp(ctx, off, ctx->instr_cnt);
}
