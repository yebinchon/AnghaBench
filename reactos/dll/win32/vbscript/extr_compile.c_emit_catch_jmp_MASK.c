#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  compile_ctx_t ;
struct TYPE_5__ {unsigned int uint; } ;
struct TYPE_4__ {unsigned int uint; } ;
struct TYPE_6__ {TYPE_2__ arg2; TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_catch ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(compile_ctx_t *ctx, unsigned stack_off, unsigned code_off)
{
    unsigned code;

    code = FUNC1(ctx, OP_catch);
    if(!code)
        return FALSE;

    FUNC0(ctx, code)->arg1.uint = code_off;
    FUNC0(ctx, code)->arg2.uint = stack_off + FUNC2(ctx);
    return TRUE;
}