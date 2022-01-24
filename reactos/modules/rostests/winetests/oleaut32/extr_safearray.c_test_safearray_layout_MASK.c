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
struct TYPE_7__ {int ref; int /*<<< orphan*/  IRecordInfo_iface; } ;
struct TYPE_6__ {int cElements; scalar_t__ lLbound; } ;
typedef  TYPE_1__ SAFEARRAYBOUND ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  TYPE_2__ IRecordInfoImpl ;
typedef  int /*<<< orphan*/  IRecordInfo ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/ * DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VT_RECORD ; 
 int /*<<< orphan*/ * VT_UI1 ; 
 int /*<<< orphan*/ * VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
    IRecordInfoImpl *irec;
    IRecordInfo *record;
    GUID guid, *guidptr;
    SAFEARRAYBOUND sab;
    SAFEARRAY *sa;
    DWORD *dwptr;
    HRESULT hr;

    sab.lLbound = 0;
    sab.cElements = 10;

    /* GUID field */
    sa = FUNC3(VT_UNKNOWN, 1, &sab);
    FUNC8(sa != NULL, "got %p\n", sa);

    guidptr = (GUID*)sa - 1;
    FUNC8(FUNC2(guidptr, &IID_IUnknown), "got %s\n", FUNC10(guidptr));

    hr = FUNC6(sa, &IID_IDispatch);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);
    FUNC8(FUNC2(guidptr, &IID_IDispatch), "got %s\n", FUNC10(guidptr));

    FUNC7(guidptr, &IID_IUnknown, sizeof(GUID));
    hr = FUNC5(sa, &guid);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);
    FUNC8(FUNC2(&guid, &IID_IUnknown), "got %s\n", FUNC10(&guid));

    hr = FUNC4(sa);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    /* VARTYPE field */
    sa = FUNC3(VT_UI1, 1, &sab);
    FUNC8(sa != NULL, "got %p\n", sa);

    dwptr = (DWORD*)sa - 1;
    FUNC8(*dwptr == VT_UI1, "got %d\n", *dwptr);

    hr = FUNC4(sa);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    /* IRecordInfo pointer */
    irec = FUNC0();
    irec->ref = 1;

    sa = FUNC9(VT_RECORD, 1, &sab, &irec->IRecordInfo_iface);
    FUNC8(sa != NULL, "failed to create array\n");

    record = *((IRecordInfo**)sa - 1);
    FUNC8(record == &irec->IRecordInfo_iface, "got %p\n", record);

    hr = FUNC4(sa);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);
    FUNC1(&irec->IRecordInfo_iface);
}