
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMDocumentType ;
typedef int IXMLDOMDocument ;
typedef int * HRESULT ;
typedef int BSTR ;


 int * E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocumentType_Release (int *) ;
 int * IXMLDOMDocumentType_get_name (int *,int *) ;
 int * IXMLDOMDocumentType_get_nodeName (int *,int *) ;
 int IXMLDOMDocument_Release (int *) ;
 int * IXMLDOMDocument_get_doctype (int *,int **) ;
 int * IXMLDOMDocument_loadXML (int *,int ,scalar_t__*) ;
 int * S_FALSE ;
 int * S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VARIANT_TRUE ;
 int _bstr_ (int ) ;
 int * create_document (int *) ;
 int lstrcmpW (char const*,int ) ;
 int ok (int,char*,...) ;
 int szEmailXML ;
 int * wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_get_doctype(void)
{
    static const WCHAR emailW[] = {'e','m','a','i','l',0};
    IXMLDOMDocumentType *doctype;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR s;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_get_doctype(doc, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    doctype = (void*)0xdeadbeef;
    hr = IXMLDOMDocument_get_doctype(doc, &doctype);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(doctype == ((void*)0), "got %p\n", doctype);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(szEmailXML), &b);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(b == VARIANT_TRUE, "failed to load XML string\n");

    doctype = ((void*)0);
    hr = IXMLDOMDocument_get_doctype(doc, &doctype);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(doctype != ((void*)0), "got %p\n", doctype);

    hr = IXMLDOMDocumentType_get_name(doctype, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXMLDOMDocumentType_get_name(doctype, &s);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(emailW, s), "got name %s\n", wine_dbgstr_w(s));
    SysFreeString(s);

    hr = IXMLDOMDocumentType_get_nodeName(doctype, &s);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(emailW, s), "got name %s\n", wine_dbgstr_w(s));
    SysFreeString(s);

    IXMLDOMDocumentType_Release(doctype);
    IXMLDOMDocument_Release(doc);
}
