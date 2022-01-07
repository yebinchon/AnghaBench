
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 scalar_t__ E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_createElement (int *,int ,int **) ;
 int IXMLDOMElement_Release (int *) ;
 scalar_t__ IXMLDOMElement_get_tagName (int *,int **) ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int lstrcmpW (int *,int ) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_get_tagName(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem, *elem2;
    HRESULT hr;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_createElement(doc, _bstr_("element"), &elem);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMElement_get_tagName(elem, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    str = ((void*)0);
    hr = IXMLDOMElement_get_tagName(elem, &str);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(str, _bstr_("element")), "got %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    hr = IXMLDOMDocument_createElement(doc, _bstr_("s:element"), &elem2);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    str = ((void*)0);
    hr = IXMLDOMElement_get_tagName(elem2, &str);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(str, _bstr_("s:element")), "got %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    IXMLDOMElement_Release(elem);
    IXMLDOMElement_Release(elem2);
    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
