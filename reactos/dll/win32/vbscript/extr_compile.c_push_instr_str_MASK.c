#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbsop_t ;
struct TYPE_8__ {int /*<<< orphan*/  code; } ;
typedef  TYPE_2__ compile_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/ * str; } ;
struct TYPE_9__ {TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_5__* FUNC1 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(compile_ctx_t *ctx, vbsop_t op, const WCHAR *arg)
{
    unsigned instr;
    WCHAR *str;

    str = FUNC0(ctx->code, arg);
    if(!str)
        return E_OUTOFMEMORY;

    instr = FUNC2(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    FUNC1(ctx, instr)->arg1.str = str;
    return S_OK;
}