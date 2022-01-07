
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;
typedef int BPFProgram ;


 struct bpf_insn const BPF_ALU32_IMM (int ,int ,int) ;
 int BPF_OR ;
 int BPF_REG_8 ;
 int assert (int *) ;
 int bpf_program_add_instructions (int *,struct bpf_insn const*,int) ;

__attribute__((used)) static int add_instructions_for_ip_any(
                BPFProgram *p,
                int verdict) {
        int r;

        assert(p);

        const struct bpf_insn insn[] = {
                BPF_ALU32_IMM(BPF_OR, BPF_REG_8, verdict),
        };

        r = bpf_program_add_instructions(p, insn, 1);
        if (r < 0)
                return r;

        return 0;
}
