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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pMarshal; int /*<<< orphan*/  clsid; scalar_t__ ref; TYPE_2__ IROTData_iface; TYPE_1__ IMoniker_iface; } ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ ClassMoniker ;

/* Variables and functions */
 int /*<<< orphan*/  ClassMonikerVtbl ; 
 int /*<<< orphan*/  ROTDataVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(ClassMoniker* This, REFCLSID rclsid)
{
    FUNC0("(%p,%s)\n",This,FUNC1(rclsid));

    /* Initialize the virtual function table. */
    This->IMoniker_iface.lpVtbl = &ClassMonikerVtbl;
    This->IROTData_iface.lpVtbl = &ROTDataVtbl;
    This->ref           = 0;
    This->clsid         = *rclsid;
    This->pMarshal      = NULL;

    return S_OK;
}