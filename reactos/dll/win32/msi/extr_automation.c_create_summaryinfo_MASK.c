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
struct TYPE_5__ {int /*<<< orphan*/  IDispatch_iface; } ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ AutomationObject ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SummaryInfo_tid ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC3(MSIHANDLE msiHandle, IDispatch **disp)
{
    AutomationObject *info;
    HRESULT hr;

    info = FUNC1(sizeof(*info));
    if (!info) return E_OUTOFMEMORY;

    hr = FUNC0(info, msiHandle, SummaryInfo_tid);
    if (hr != S_OK)
    {
        FUNC2(info);
        return hr;
    }

    *disp = &info->IDispatch_iface;

    return hr;
}