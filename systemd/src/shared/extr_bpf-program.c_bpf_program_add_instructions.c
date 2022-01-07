
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_insn {int dummy; } ;
struct TYPE_4__ {scalar_t__ kernel_fd; scalar_t__ n_instructions; scalar_t__ instructions; int allocated; } ;
typedef TYPE_1__ BPFProgram ;


 int EBUSY ;
 int ENOMEM ;
 int GREEDY_REALLOC (scalar_t__,int ,scalar_t__) ;
 int assert (TYPE_1__*) ;
 int memcpy (scalar_t__,struct bpf_insn const*,int) ;

int bpf_program_add_instructions(BPFProgram *p, const struct bpf_insn *instructions, size_t count) {

        assert(p);

        if (p->kernel_fd >= 0)
                return -EBUSY;

        if (!GREEDY_REALLOC(p->instructions, p->allocated, p->n_instructions + count))
                return -ENOMEM;

        memcpy(p->instructions + p->n_instructions, instructions, sizeof(struct bpf_insn) * count);
        p->n_instructions += count;

        return 0;
}
