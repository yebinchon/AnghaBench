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
typedef  int /*<<< orphan*/  compile_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(compile_ctx_t *ctx, unsigned jmp_label)
{
    unsigned pop_cnt = FUNC3(ctx);

    if(pop_cnt) {
        HRESULT hres;

        hres = FUNC2(ctx, OP_pop, pop_cnt);
        if(FUNC0(hres))
            return hres;
    }

    return FUNC1(ctx, OP_jmp, jmp_label);
}