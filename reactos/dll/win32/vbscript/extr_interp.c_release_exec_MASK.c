#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* stack; scalar_t__* vars; scalar_t__* args; int /*<<< orphan*/  heap; scalar_t__* arrays; TYPE_1__* func; scalar_t__ this_obj; int /*<<< orphan*/  dynamic_vars; scalar_t__ ret_val; } ;
typedef  TYPE_2__ exec_ctx_t ;
struct TYPE_4__ {unsigned int arg_cnt; unsigned int var_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(exec_ctx_t *ctx)
{
    unsigned i;

    FUNC2(&ctx->ret_val);
    FUNC5(ctx->dynamic_vars);

    if(ctx->this_obj)
        FUNC0(ctx->this_obj);

    if(ctx->args) {
        for(i=0; i < ctx->func->arg_cnt; i++)
            FUNC2(ctx->args+i);
    }

    if(ctx->vars) {
        for(i=0; i < ctx->func->var_cnt; i++)
            FUNC2(ctx->vars+i);
    }

    if(ctx->arrays) {
        for(i=0; i < ctx->func->var_cnt; i++) {
            if(ctx->arrays[i])
                FUNC1(ctx->arrays[i]);
        }
        FUNC3(ctx->arrays);
    }

    FUNC4(&ctx->heap);
    FUNC3(ctx->args);
    FUNC3(ctx->vars);
    FUNC3(ctx->stack);
}