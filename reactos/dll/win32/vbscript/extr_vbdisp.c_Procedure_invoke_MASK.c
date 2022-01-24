#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* desc; } ;
typedef  TYPE_2__ vbdisp_t ;
struct TYPE_8__ {int /*<<< orphan*/  site; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {int /*<<< orphan*/  value_func; TYPE_3__* ctx; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    script_ctx_t *ctx = This->desc->ctx;
    HRESULT hres;

    FUNC2("\n");

    FUNC0(ctx->site);
    hres = FUNC3(ctx, This->desc->value_func, NULL, NULL, NULL);
    FUNC1(ctx->site);

    return hres;
}