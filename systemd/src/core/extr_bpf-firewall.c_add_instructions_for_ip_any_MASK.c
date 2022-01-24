#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  BPFProgram ;

/* Variables and functions */
 struct bpf_insn const FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_OR ; 
 int /*<<< orphan*/  BPF_REG_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct bpf_insn const*,int) ; 

__attribute__((used)) static int FUNC3(
                BPFProgram *p,
                int verdict) {
        int r;

        FUNC1(p);

        const struct bpf_insn insn[] = {
                FUNC0(BPF_OR, BPF_REG_8, verdict),
        };

        r = FUNC2(p, insn, 1);
        if (r < 0)
                return r;

        return 0;
}