#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* instr; } ;
typedef  TYPE_3__ exec_ctx_t ;
struct TYPE_7__ {unsigned int uint; } ;
struct TYPE_8__ {TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__*) ; 

__attribute__((used)) static HRESULT FUNC4(exec_ctx_t *ctx)
{
    const unsigned arg = ctx->instr->arg1.uint;
    HRESULT hres;
    BOOL b;

    FUNC1("%u\n", arg);

    hres = FUNC3(ctx, &b);
    if(FUNC0(hres))
        return hres;

    if(b)
        FUNC2(ctx, ctx->instr->arg1.uint);
    else
        ctx->instr++;
    return S_OK;
}