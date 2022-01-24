#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bpf_insn {int dummy; } ;
struct TYPE_4__ {scalar_t__ kernel_fd; scalar_t__ n_instructions; scalar_t__ instructions; int /*<<< orphan*/  allocated; } ;
typedef  TYPE_1__ BPFProgram ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct bpf_insn const*,int) ; 

int FUNC3(BPFProgram *p, const struct bpf_insn *instructions, size_t count) {

        FUNC1(p);

        if (p->kernel_fd >= 0) /* don't allow modification after we uploaded things to the kernel */
                return -EBUSY;

        if (!FUNC0(p->instructions, p->allocated, p->n_instructions + count))
                return -ENOMEM;

        FUNC2(p->instructions + p->n_instructions, instructions, sizeof(struct bpf_insn) * count);
        p->n_instructions += count;

        return 0;
}