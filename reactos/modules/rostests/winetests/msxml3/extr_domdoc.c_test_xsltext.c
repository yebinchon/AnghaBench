
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int EXPECT_HR (scalar_t__,scalar_t__) ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_loadXML (int *,int ,int *) ;
 scalar_t__ IXMLDOMDocument_transformNode (int *,int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int lstrcmpW (int ,int ) ;
 int ok (int,char*,scalar_t__) ;
 char* omitxmldecl_doc ;
 char* omitxmldecl_xsl ;
 scalar_t__ wine_dbgstr_w (int ) ;
 char* xsltext_xsl ;

__attribute__((used)) static void test_xsltext(void)
{
    IXMLDOMDocument *doc, *doc2;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR ret;

    doc = create_document(&IID_IXMLDOMDocument);
    doc2 = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(xsltext_xsl), &b);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_loadXML(doc2, _bstr_("<testkey/>"), &b);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_transformNode(doc2, (IXMLDOMNode*)doc, &ret);
    EXPECT_HR(hr, S_OK);
    ok(!lstrcmpW(ret, _bstr_("testdata")), "transform result %s\n", wine_dbgstr_w(ret));
    SysFreeString(ret);


    hr = IXMLDOMDocument_loadXML(doc, _bstr_(omitxmldecl_xsl), &b);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IXMLDOMDocument_loadXML(doc2, _bstr_(omitxmldecl_doc), &b);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_transformNode(doc2, (IXMLDOMNode*)doc, &ret);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(ret, _bstr_("<node>item1</node><node>item2</node>")), "transform result %s\n", wine_dbgstr_w(ret));
    SysFreeString(ret);

    IXMLDOMDocument_Release(doc2);
    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
