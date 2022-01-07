
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compile_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int OP_jmp ;
 int OP_pop ;
 int push_instr_addr (int *,int ,unsigned int) ;
 int push_instr_uint (int *,int ,unsigned int) ;
 unsigned int stack_offset (int *) ;

__attribute__((used)) static HRESULT exit_label(compile_ctx_t *ctx, unsigned jmp_label)
{
    unsigned pop_cnt = stack_offset(ctx);

    if(pop_cnt) {
        HRESULT hres;

        hres = push_instr_uint(ctx, OP_pop, pop_cnt);
        if(FAILED(hres))
            return hres;
    }

    return push_instr_addr(ctx, OP_jmp, jmp_label);
}
