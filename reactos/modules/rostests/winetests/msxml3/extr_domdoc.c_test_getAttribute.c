
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int VARIANT ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef int HRESULT ;


 int EXPECT_HR (int ,int ) ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 int IXMLDOMDocument_get_documentElement (int *,int **) ;
 int IXMLDOMDocument_loadXML (int *,int ,int *) ;
 int IXMLDOMElement_Release (int *) ;
 int IXMLDOMElement_getAttribute (int *,int ,int *) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ VT_BSTR ;
 scalar_t__ VT_NULL ;
 int V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int lstrcmpW (int ,int ) ;
 int ok (int,char*,scalar_t__) ;
 char* szExampleXML ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_getAttribute(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    VARIANT_BOOL v;
    VARIANT var;
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(szExampleXML), &v);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_get_documentElement(doc, &elem);
    EXPECT_HR(hr, S_OK);

    VariantInit(&var);
    hr = IXMLDOMElement_getAttribute( elem, _bstr_("xmlns:foo"), &var );
    EXPECT_HR(hr, S_OK);
    ok( V_VT(&var) == VT_BSTR, "vt = %x\n", V_VT(&var));
    ok( !lstrcmpW(V_BSTR(&var), _bstr_("urn:uuid:86B2F87F-ACB6-45cd-8B77-9BDB92A01A29")), "wrong attr value: %s\n", wine_dbgstr_w(V_BSTR(&var)));
    VariantClear(&var);

    hr = IXMLDOMElement_getAttribute( elem, _bstr_("a"), &var );
    EXPECT_HR(hr, S_OK);
    ok( V_VT(&var) == VT_BSTR, "vt = %x\n", V_VT(&var));
    ok( !lstrcmpW(V_BSTR(&var), _bstr_("attr a")), "wrong attr value: %s\n", wine_dbgstr_w(V_BSTR(&var)));
    VariantClear(&var);

    hr = IXMLDOMElement_getAttribute( elem, _bstr_("foo:b"), &var );
    EXPECT_HR(hr, S_OK);
    ok( V_VT(&var) == VT_BSTR, "vt = %x\n", V_VT(&var));
    ok( !lstrcmpW(V_BSTR(&var), _bstr_("attr b")), "wrong attr value: %s\n", wine_dbgstr_w(V_BSTR(&var)));
    VariantClear(&var);

    hr = IXMLDOMElement_getAttribute( elem, _bstr_("b"), &var );
    EXPECT_HR(hr, S_FALSE);
    ok( V_VT(&var) == VT_NULL, "vt = %x\n", V_VT(&var));
    VariantClear(&var);

    hr = IXMLDOMElement_getAttribute( elem, _bstr_("non-existent"), &var );
    EXPECT_HR(hr, S_FALSE);
    ok( V_VT(&var) == VT_NULL, "vt = %x\n", V_VT(&var));
    VariantClear(&var);

    IXMLDOMElement_Release(elem);
    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
