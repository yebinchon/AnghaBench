
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMDocument ;
typedef int IObjectSafety ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLHTTPRequest ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IObjectSafety ;
 int IID_IXMLDOMDocument ;
 int IObjectSafety_Release (int *) ;
 scalar_t__ IXMLDOMDocument_QueryInterface (int *,int *,void**) ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_document (int *) ;
 int ok (int,char*,scalar_t__) ;
 int test_IObjectSafety_common (int *) ;

__attribute__((used)) static void test_IObjectSafety(void)
{
    IXMLDOMDocument *doc;
    IObjectSafety *safety;
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_QueryInterface(doc, &IID_IObjectSafety, (void**)&safety);
    ok(hr == S_OK, "ret %08x\n", hr );

    test_IObjectSafety_common(safety);

    IObjectSafety_Release(safety);
    IXMLDOMDocument_Release(doc);

    hr = CoCreateInstance(&CLSID_XMLHTTPRequest, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IObjectSafety, (void**)&safety);
    ok(hr == S_OK, "Could not create XMLHTTPRequest instance: %08x\n", hr);

    test_IObjectSafety_common(safety);

    IObjectSafety_Release(safety);

}
