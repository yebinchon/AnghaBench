#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  STGMEDIUM ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  CF_ENHMETAFILE ; 
 int /*<<< orphan*/  CF_METAFILEPICT ; 
 scalar_t__ DV_E_TYMED ; 
 int DataObjectImpl_GetData_calls ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TYMED_ENHMF ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 int /*<<< orphan*/  TYMED_MFPICT ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    HRESULT hr;
    IDataObject *data_obj;
    FORMATETC fmtetc;
    STGMEDIUM stgmedium;

    hr = FUNC3(&data_obj);
    FUNC6(hr == S_OK, "OleGetClipboard failed with error 0x%08x\n", hr);

    DataObjectImpl_GetData_calls = 0;

    FUNC2(fmtetc, CF_METAFILEPICT, TYMED_MFPICT);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC6(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC5(hr)) FUNC4(&stgmedium);

    FUNC2(fmtetc, CF_METAFILEPICT, TYMED_HGLOBAL);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC6(hr == DV_E_TYMED, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC5(hr)) FUNC4(&stgmedium);

    FUNC2(fmtetc, CF_ENHMETAFILE, TYMED_HGLOBAL);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC6(hr == DV_E_TYMED, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC5(hr)) FUNC4(&stgmedium);

    FUNC2(fmtetc, CF_ENHMETAFILE, TYMED_ENHMF);
    hr = FUNC0(data_obj, &fmtetc, &stgmedium);
    FUNC6(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(FUNC5(hr)) FUNC4(&stgmedium);

    FUNC6(DataObjectImpl_GetData_calls == 5,
            "DataObjectImpl_GetData called 5 times instead of %d times\n",
            DataObjectImpl_GetData_calls);
    FUNC1(data_obj);
}