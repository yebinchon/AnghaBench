
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMXWriter ;
typedef int IDispatchEx ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_MXXMLWriter ;
 int CLSID_MXXMLWriter60 ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int IDispatchEx_QueryInterface (int *,int *,void**) ;
 int IDispatchEx_Release (int *) ;
 int IID_IDispatchEx ;
 int IID_IMXWriter ;
 int IID_IUnknown ;
 int IMXWriter_QueryInterface (int *,int *,void**) ;
 int IMXWriter_Release (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 scalar_t__ is_clsid_supported (int *,int ) ;
 int mxwriter_support_data ;
 int ok (int,char*,int ) ;
 int test_obj_dispex (int *) ;

__attribute__((used)) static void test_mxwriter_dispex(void)
{
    IDispatchEx *dispex;
    IMXWriter *writer;
    IUnknown *unk;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_MXXMLWriter, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IMXWriter, (void**)&writer);
    EXPECT_HR(hr, S_OK);

    hr = IMXWriter_QueryInterface(writer, &IID_IDispatchEx, (void**)&dispex);
    EXPECT_HR(hr, S_OK);
    hr = IDispatchEx_QueryInterface(dispex, &IID_IUnknown, (void**)&unk);
    test_obj_dispex(unk);
    IUnknown_Release(unk);
    IDispatchEx_Release(dispex);
    IMXWriter_Release(writer);

    if (is_clsid_supported(&CLSID_MXXMLWriter60, mxwriter_support_data))
    {
        hr = CoCreateInstance(&CLSID_MXXMLWriter60, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void**)&unk);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        test_obj_dispex(unk);
        IUnknown_Release(unk);
    }
}
