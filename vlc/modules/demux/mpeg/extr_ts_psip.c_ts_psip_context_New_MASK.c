#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  eits; int /*<<< orphan*/  etts; scalar_t__ i_tabletype; int /*<<< orphan*/ * p_a65; int /*<<< orphan*/ * p_vct; int /*<<< orphan*/ * p_stt; int /*<<< orphan*/ * p_mgt; } ;
typedef  TYPE_1__ ts_psip_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 

ts_psip_context_t * FUNC3()
{
    ts_psip_context_t *p_ctx = FUNC2(sizeof(*p_ctx));
    if(FUNC1(p_ctx))
    {
        p_ctx->p_mgt = NULL;
        p_ctx->p_stt = NULL;
        p_ctx->p_vct = NULL;
        p_ctx->p_a65 = NULL;
        p_ctx->i_tabletype = 0;
        FUNC0(p_ctx->etts);
        FUNC0(p_ctx->eits);
    }
    return p_ctx;
}