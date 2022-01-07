
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef int IXMLDOMAttribute ;
typedef int HRESULT ;
typedef int BSTR ;


 int EXPECT_HR (int ,int ) ;
 int E_FAIL ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMAttribute_Release (int *) ;
 int IXMLDOMDocument_Release (int *) ;
 int IXMLDOMDocument_get_documentElement (int *,int **) ;
 int IXMLDOMDocument_loadXML (int *,int ,int *) ;
 int IXMLDOMElement_Release (int *) ;
 int IXMLDOMElement_getAttributeNode (int *,int ,int **) ;
 int S_FALSE ;
 int S_OK ;
 int SysAllocString (int ) ;
 int SysFreeString (int ) ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int nonexistent_attrW ;
 int nonexistent_fileW ;
 int ok (int ,char*,int *) ;
 char* szExampleXML ;

__attribute__((used)) static void test_getAttributeNode(void)
{
    IXMLDOMAttribute *attr;
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    VARIANT_BOOL v;
    HRESULT hr;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(szExampleXML), &v);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_get_documentElement(doc, &elem);
    EXPECT_HR(hr, S_OK);

    str = SysAllocString(nonexistent_fileW);
    hr = IXMLDOMElement_getAttributeNode(elem, str, ((void*)0));
    EXPECT_HR(hr, E_FAIL);

    attr = (IXMLDOMAttribute*)0xdeadbeef;
    hr = IXMLDOMElement_getAttributeNode(elem, str, &attr);
    EXPECT_HR(hr, E_FAIL);
    ok(attr == ((void*)0), "got %p\n", attr);
    SysFreeString(str);

    str = SysAllocString(nonexistent_attrW);
    hr = IXMLDOMElement_getAttributeNode(elem, str, ((void*)0));
    EXPECT_HR(hr, S_FALSE);

    attr = (IXMLDOMAttribute*)0xdeadbeef;
    hr = IXMLDOMElement_getAttributeNode(elem, str, &attr);
    EXPECT_HR(hr, S_FALSE);
    ok(attr == ((void*)0), "got %p\n", attr);
    SysFreeString(str);

    hr = IXMLDOMElement_getAttributeNode(elem, _bstr_("foo:b"), &attr);
    EXPECT_HR(hr, S_OK);
    IXMLDOMAttribute_Release(attr);

    hr = IXMLDOMElement_getAttributeNode(elem, _bstr_("b"), &attr);
    EXPECT_HR(hr, S_FALSE);

    hr = IXMLDOMElement_getAttributeNode(elem, _bstr_("a"), &attr);
    EXPECT_HR(hr, S_OK);
    IXMLDOMAttribute_Release(attr);

    IXMLDOMElement_Release(elem);
    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
