#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbsop_t ;
typedef  int /*<<< orphan*/  compile_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ bstr; } ;
struct TYPE_4__ {TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(compile_ctx_t *ctx, vbsop_t op, const WCHAR *arg)
{
    unsigned instr;
    BSTR bstr;

    bstr = FUNC0(ctx, arg);
    if(!bstr)
        return E_OUTOFMEMORY;

    instr = FUNC2(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    FUNC1(ctx, instr)->arg1.bstr = bstr;
    return S_OK;
}