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
struct TYPE_5__ {int dwAspect; int lindex; } ;
typedef  int /*<<< orphan*/  STGMEDIUM ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  CF_RIFF ; 
 int /*<<< orphan*/  CF_TEXT ; 
 void* DVASPECT_THUMBNAIL ; 
 scalar_t__ DV_E_CLIPFORMAT ; 
 scalar_t__ DV_E_FORMATETC ; 
 scalar_t__ DV_E_TYMED ; 
 int DataObjectImpl_GetData_calls ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TYMED_FILE ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  expect_DataObjectImpl_QueryGetData ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    IDataObject *data_obj;
    FORMATETC fmtetc;
    STGMEDIUM stgmedium;

    hr = FUNC4(NULL);
    FUNC8(hr == E_INVALIDARG, "OleGetClipboard(NULL) should return E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC4(&data_obj);
    FUNC8(hr == S_OK, "OleGetClipboard failed with error 0x%08x\n", hr);

    /* test IDataObject_QueryGetData */

    /* clipboard's IDataObject_QueryGetData shouldn't defer to our IDataObject_QueryGetData */
    expect_DataObjectImpl_QueryGetData = FALSE;

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == S_OK, "IDataObject_QueryGetData failed with error 0x%08x\n", hr);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.dwAspect = 0xdeadbeef;
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == DV_E_FORMATETC, "IDataObject_QueryGetData should have failed with DV_E_FORMATETC instead of 0x%08x\n", hr);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.dwAspect = DVASPECT_THUMBNAIL;
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == DV_E_FORMATETC, "IDataObject_QueryGetData should have failed with DV_E_FORMATETC instead of 0x%08x\n", hr);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.lindex = 256;
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == DV_E_FORMATETC || FUNC7(hr == S_OK),
        "IDataObject_QueryGetData should have failed with DV_E_FORMATETC instead of 0x%08x\n", hr);

    FUNC3(fmtetc, CF_RIFF, TYMED_HGLOBAL);
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == DV_E_CLIPFORMAT, "IDataObject_QueryGetData should have failed with DV_E_CLIPFORMAT instead of 0x%08x\n", hr);

    FUNC3(fmtetc, CF_TEXT, TYMED_FILE);
    hr = FUNC1(data_obj, &fmtetc);
    FUNC8(hr == S_OK, "IDataObject_QueryGetData failed with error 0x%08x\n", hr);

    expect_DataObjectImpl_QueryGetData = TRUE;

    /* test IDataObject_GetData */

    DataObjectImpl_GetData_calls = 0;

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC6(hr)) FUNC5(&stgmedium);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.dwAspect = 0xdeadbeef;
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC6(hr)) FUNC5(&stgmedium);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.dwAspect = DVASPECT_THUMBNAIL;
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC6(hr)) FUNC5(&stgmedium);

    FUNC3(fmtetc, CF_TEXT, TYMED_HGLOBAL);
    fmtetc.lindex = 256;
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == DV_E_FORMATETC || FUNC7(hr == S_OK), "IDataObject_GetData should have failed with DV_E_FORMATETC instead of 0x%08x\n", hr);
    if (hr == S_OK)
    {
        /* undo the unexpected success */
        DataObjectImpl_GetData_calls--;
        FUNC5(&stgmedium);
    }

    FUNC3(fmtetc, CF_RIFF, TYMED_HGLOBAL);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == DV_E_FORMATETC, "IDataObject_GetData should have failed with DV_E_FORMATETC instead of 0x%08x\n", hr);
    if(FUNC6(hr)) FUNC5(&stgmedium);

    FUNC3(fmtetc, CF_TEXT, TYMED_FILE);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC8(hr == DV_E_TYMED, "IDataObject_GetData should have failed with DV_E_TYMED instead of 0x%08x\n", hr);
    if(FUNC6(hr)) FUNC5(&stgmedium);

    FUNC8(DataObjectImpl_GetData_calls == 6, "DataObjectImpl_GetData should have been called 6 times instead of %d times\n", DataObjectImpl_GetData_calls);

    FUNC2(data_obj);
}