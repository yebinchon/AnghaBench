
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STGMEDIUM ;
typedef int IDataObject ;
typedef scalar_t__ HRESULT ;
typedef int FORMATETC ;


 int CF_ENHMETAFILE ;
 int CF_METAFILEPICT ;
 scalar_t__ DV_E_TYMED ;
 int DataObjectImpl_GetData_calls ;
 scalar_t__ IDataObject_GetData (int *,int *,int *) ;
 int IDataObject_Release (int *) ;
 int InitFormatEtc (int ,int ,int ) ;
 scalar_t__ OleGetClipboard (int **) ;
 int ReleaseStgMedium (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TYMED_ENHMF ;
 int TYMED_HGLOBAL ;
 int TYMED_MFPICT ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_complex_get_clipboard(void)
{
    HRESULT hr;
    IDataObject *data_obj;
    FORMATETC fmtetc;
    STGMEDIUM stgmedium;

    hr = OleGetClipboard(&data_obj);
    ok(hr == S_OK, "OleGetClipboard failed with error 0x%08x\n", hr);

    DataObjectImpl_GetData_calls = 0;

    InitFormatEtc(fmtetc, CF_METAFILEPICT, TYMED_MFPICT);
    hr = IDataObject_GetData(data_obj, &fmtetc, &stgmedium);
    ok(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(SUCCEEDED(hr)) ReleaseStgMedium(&stgmedium);

    InitFormatEtc(fmtetc, CF_METAFILEPICT, TYMED_HGLOBAL);
    hr = IDataObject_GetData(data_obj, &fmtetc, &stgmedium);
    ok(hr == DV_E_TYMED, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(SUCCEEDED(hr)) ReleaseStgMedium(&stgmedium);

    InitFormatEtc(fmtetc, CF_ENHMETAFILE, TYMED_HGLOBAL);
    hr = IDataObject_GetData(data_obj, &fmtetc, &stgmedium);
    ok(hr == DV_E_TYMED, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(SUCCEEDED(hr)) ReleaseStgMedium(&stgmedium);

    InitFormatEtc(fmtetc, CF_ENHMETAFILE, TYMED_ENHMF);
    hr = IDataObject_GetData(data_obj, &fmtetc, &stgmedium);
    ok(hr == S_OK, "IDataObject_GetData failed with error 0x%08x\n", hr);
    if(SUCCEEDED(hr)) ReleaseStgMedium(&stgmedium);

    ok(DataObjectImpl_GetData_calls == 5,
            "DataObjectImpl_GetData called 5 times instead of %d times\n",
            DataObjectImpl_GetData_calls);
    IDataObject_Release(data_obj);
}
