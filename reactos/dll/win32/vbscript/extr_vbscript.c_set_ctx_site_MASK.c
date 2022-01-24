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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  site; TYPE_3__* ctx; int /*<<< orphan*/  lcid; } ;
typedef  TYPE_1__ VBScript ;
struct TYPE_6__ {int /*<<< orphan*/  site; int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPTSTATE_INITIALIZED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static HRESULT FUNC4(VBScript *This)
{
    HRESULT hres;

    This->ctx->lcid = This->lcid;

    hres = FUNC3(This->ctx);
    if(FUNC0(hres))
        return hres;

    FUNC1(This->site);
    This->ctx->site = This->site;

    FUNC2(This, SCRIPTSTATE_INITIALIZED);
    return S_OK;
}