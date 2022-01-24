#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  main_code; int /*<<< orphan*/  pending_exec; } ;
typedef  TYPE_1__ vbscode_t ;
struct TYPE_7__ {int /*<<< orphan*/  site; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(script_ctx_t *ctx, vbscode_t *code)
{
    HRESULT hres;

    code->pending_exec = FALSE;

    FUNC0(ctx->site);
    hres = FUNC2(ctx, &code->main_code, NULL, NULL, NULL);
    FUNC1(ctx->site);

    return hres;
}