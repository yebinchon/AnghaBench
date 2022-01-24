#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IWshExec_iface; int /*<<< orphan*/  classinfo; int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ WshExecImpl ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ STARTUPINFOW ;
typedef  TYPE_3__ IWshExec ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WshExec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WshExecVtbl ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(BSTR command, IWshExec **ret)
{
    STARTUPINFOW si = {0};
    WshExecImpl *This;

    *ret = NULL;

    This = FUNC3(sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->IWshExec_iface.lpVtbl = &WshExecVtbl;
    This->ref = 1;

    if (!FUNC0(NULL, command, NULL, NULL, FALSE, 0, NULL, NULL, &si, &This->info)) {
        FUNC4(This);
        return FUNC2(FUNC1());
    }

    FUNC5(&CLSID_WshExec, (IUnknown *)&This->IWshExec_iface, &This->classinfo);
    *ret = &This->IWshExec_iface;
    return S_OK;
}