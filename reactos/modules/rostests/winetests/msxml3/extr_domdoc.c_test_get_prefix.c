
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocumentFragment ;
typedef int IXMLDOMDocument ;
typedef int IXMLDOMComment ;
typedef int IXMLDOMCDATASection ;
typedef int * HRESULT ;
typedef int * BSTR ;


 int EXPECT_HR (int *,int *) ;
 int * E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMCDATASection_Release (int *) ;
 int * IXMLDOMCDATASection_get_prefix (int *,int **) ;
 int IXMLDOMComment_Release (int *) ;
 int * IXMLDOMComment_get_prefix (int *,int **) ;
 int IXMLDOMDocumentFragment_Release (int *) ;
 int * IXMLDOMDocumentFragment_get_prefix (int *,int **) ;
 int IXMLDOMDocument_Release (int *) ;
 int * IXMLDOMDocument_createCDATASection (int *,int *,int **) ;
 int * IXMLDOMDocument_createComment (int *,int *,int **) ;
 int * IXMLDOMDocument_createDocumentFragment (int *,int **) ;
 int * IXMLDOMDocument_createElement (int *,int ,int **) ;
 int * IXMLDOMDocument_get_documentElement (int *,int **) ;
 int * IXMLDOMDocument_get_prefix (int *,int **) ;
 int * IXMLDOMDocument_loadXML (int *,int ,int *) ;
 int IXMLDOMElement_Release (int *) ;
 int * IXMLDOMElement_get_namespaceURI (int *,int **) ;
 int * IXMLDOMElement_get_prefix (int *,int **) ;
 int * S_FALSE ;
 int * S_OK ;
 int SysFreeString (int *) ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 char* get_prefix_doc ;
 scalar_t__ lstrcmpW (int *,int ) ;
 int ok (int,char*,...) ;
 int * wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_get_prefix(void)
{
    IXMLDOMDocumentFragment *fragment;
    IXMLDOMCDATASection *cdata;
    IXMLDOMElement *element;
    IXMLDOMComment *comment;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);



    str = (void*)0xdeadbeef;
    hr = IXMLDOMDocument_get_prefix(doc, &str);
    EXPECT_HR(hr, S_FALSE);
    ok(str == ((void*)0), "got %p\n", str);

    hr = IXMLDOMDocument_get_prefix(doc, ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);


    hr = IXMLDOMDocument_createCDATASection(doc, ((void*)0), &cdata);
    ok(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = IXMLDOMCDATASection_get_prefix(cdata, &str);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok( str == 0, "got %p\n", str);

    hr = IXMLDOMCDATASection_get_prefix(cdata, ((void*)0));
    ok(hr == E_INVALIDARG, "got %08x\n", hr);
    IXMLDOMCDATASection_Release(cdata);


    hr = IXMLDOMDocument_createComment(doc, ((void*)0), &comment);
    ok(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = IXMLDOMComment_get_prefix(comment, &str);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok( str == 0, "got %p\n", str);

    hr = IXMLDOMComment_get_prefix(comment, ((void*)0));
    ok(hr == E_INVALIDARG, "got %08x\n", hr);
    IXMLDOMComment_Release(comment);


    hr = IXMLDOMDocument_createDocumentFragment(doc, &fragment);
    ok(hr == S_OK, "got %08x\n", hr );

    str = (void*)0xdeadbeef;
    hr = IXMLDOMDocumentFragment_get_prefix(fragment, &str);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok( str == 0, "got %p\n", str);

    hr = IXMLDOMDocumentFragment_get_prefix(fragment, ((void*)0));
    ok(hr == E_INVALIDARG, "got %08x\n", hr);
    IXMLDOMDocumentFragment_Release(fragment);


    hr = IXMLDOMDocument_createElement(doc, _bstr_("elem"), &element);
    ok( hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMElement_get_prefix(element, ((void*)0));
    ok( hr == E_INVALIDARG, "got 0x%08x\n", hr);

    str = (void*)0xdeadbeef;
    hr = IXMLDOMElement_get_prefix(element, &str);
    ok( hr == S_FALSE, "got 0x%08x\n", hr);
    ok( str == 0, "got %p\n", str);

    IXMLDOMElement_Release(element);


    hr = IXMLDOMDocument_createElement(doc, _bstr_("a:elem"), &element);
    ok( hr == S_OK, "got 0x%08x\n", hr);

    str = (void*)0xdeadbeef;
    hr = IXMLDOMElement_get_prefix(element, &str);
    ok( hr == S_OK, "got 0x%08x\n", hr);
    ok( lstrcmpW(str, _bstr_("a")) == 0, "expected prefix \"a\"\n");
    SysFreeString(str);

    str = (void*)0xdeadbeef;
    hr = IXMLDOMElement_get_namespaceURI(element, &str);
    ok( hr == S_FALSE, "got 0x%08x\n", hr);
    ok( str == 0, "got %p\n", str);

    IXMLDOMElement_Release(element);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(get_prefix_doc), &b);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_get_documentElement(doc, &element);
    EXPECT_HR(hr, S_OK);

    str = (void*)0xdeadbeef;
    hr = IXMLDOMElement_get_prefix(element, &str);
    EXPECT_HR(hr, S_FALSE);
    ok(str == ((void*)0), "got %p\n", str);

    str = (void*)0xdeadbeef;
    hr = IXMLDOMElement_get_namespaceURI(element, &str);
    EXPECT_HR(hr, S_FALSE);
    ok(str == ((void*)0), "got %s\n", wine_dbgstr_w(str));

    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
