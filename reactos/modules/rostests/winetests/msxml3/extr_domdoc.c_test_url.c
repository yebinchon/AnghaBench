
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 scalar_t__ E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_get_url (int *,int **) ;
 scalar_t__ S_FALSE ;
 int * create_document (int *) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_url(void)
{
    IXMLDOMDocument *doc;
    HRESULT hr;
    BSTR s;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_get_url(doc, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    s = (void *)0xdeadbeef;
    hr = IXMLDOMDocument_get_url(doc, &s);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(s == ((void*)0), "got %s\n", wine_dbgstr_w(s));

    IXMLDOMDocument_Release(doc);
}
