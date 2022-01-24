#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* desc; } ;
typedef  TYPE_3__ vbdisp_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  err_number; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FACILITY_VBS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;

    FUNC3("\n");

    if(!This->desc)
        return E_UNEXPECTED;

    if(args_cnt) {
        FUNC0("setter not implemented\n");
        return E_NOTIMPL;
    }

    hres = This->desc->ctx->err_number;
    return FUNC4(res, FUNC2(hres) == FACILITY_VBS ? FUNC1(hres) : hres);
}