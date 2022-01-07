
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef int IXMLDOMAttribute ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;
typedef int * BSTR ;


 int EXPECT_HR (scalar_t__,scalar_t__) ;
 scalar_t__ E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IID_IXMLDOMElement ;
 int IXMLDOMAttribute_Release (int *) ;
 scalar_t__ IXMLDOMAttribute_get_nodeName (int *,int **) ;
 scalar_t__ IXMLDOMAttribute_get_prefix (int *,int **) ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_get_namespaceURI (int *,int **) ;
 scalar_t__ IXMLDOMDocument_loadXML (int *,int ,scalar_t__*) ;
 scalar_t__ IXMLDOMDocument_selectSingleNode (int *,int ,int **) ;
 int IXMLDOMElement_Release (int *) ;
 scalar_t__ IXMLDOMElement_getAttributeNode (int *,int ,int **) ;
 scalar_t__ IXMLDOMNode_QueryInterface (int *,int *,void**) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_firstChild (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_namespaceURI (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_nodeName (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_prefix (int *,int **) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 scalar_t__ VARIANT_TRUE ;
 int _bstr_ (char const*) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int lstrcmpW (int *,int ) ;
 int ok (int,char*,scalar_t__) ;
 int * wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_namespaces_basic(void)
{
    static const CHAR namespaces_xmlA[] =
        "<?xml version=\"1.0\"?>\n"
        "<XMI xmi.version=\"1.1\" xmlns:Model=\"http://omg.org/mof.Model/1.3\">"
        "  <XMI.content>"
        "    <Model:Package name=\"WinePackage\" Model:name2=\"name2 attr\" />"
        "  </XMI.content>"
        "</XMI>";

    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    IXMLDOMNode *node;

    VARIANT_BOOL b;
    HRESULT hr;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(namespaces_xmlA), &b);
    EXPECT_HR(hr, S_OK);
    ok(b == VARIANT_TRUE, "got %d\n", b);

    str = (void *)0xdeadbeef;
    hr = IXMLDOMDocument_get_namespaceURI(doc, &str);
    EXPECT_HR(hr, S_FALSE);
    ok(str == ((void*)0), "got %p\n", str);

    hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("//XMI.content"), &node );
    EXPECT_HR(hr, S_OK);
    if(hr == S_OK)
    {
        IXMLDOMAttribute *attr;
        IXMLDOMNode *node2;

        hr = IXMLDOMNode_get_firstChild(node, &node2);
        EXPECT_HR(hr, S_OK);
        ok(node2 != ((void*)0), "got %p\n", node2);


        hr = IXMLDOMNode_get_prefix(node2, ((void*)0));
        EXPECT_HR(hr, E_INVALIDARG);


        hr = IXMLDOMNode_get_prefix(node2, &str);
        EXPECT_HR(hr, S_OK);
        ok( !lstrcmpW( str, _bstr_("Model")), "got %s\n", wine_dbgstr_w(str));
        SysFreeString(str);

        hr = IXMLDOMNode_get_nodeName(node2, &str);
        EXPECT_HR(hr, S_OK);
        ok(!lstrcmpW( str, _bstr_("Model:Package")), "got %s\n", wine_dbgstr_w(str));
        SysFreeString(str);


        hr = IXMLDOMNode_get_namespaceURI(node2, ((void*)0));
        EXPECT_HR(hr, E_INVALIDARG);


        hr = IXMLDOMNode_get_namespaceURI(node2, &str);
        EXPECT_HR(hr, S_OK);
        ok(!lstrcmpW( str, _bstr_("http://omg.org/mof.Model/1.3")), "got %s\n", wine_dbgstr_w(str));
        SysFreeString(str);

        hr = IXMLDOMNode_QueryInterface(node2, &IID_IXMLDOMElement, (void**)&elem);
        EXPECT_HR(hr, S_OK);

        hr = IXMLDOMElement_getAttributeNode(elem, _bstr_("Model:name2"), &attr);
        EXPECT_HR(hr, S_OK);

        hr = IXMLDOMAttribute_get_nodeName(attr, &str);
        EXPECT_HR(hr, S_OK);
        ok(!lstrcmpW( str, _bstr_("Model:name2")), "got %s\n", wine_dbgstr_w(str));
        SysFreeString(str);

        hr = IXMLDOMAttribute_get_prefix(attr, &str);
        EXPECT_HR(hr, S_OK);
        ok(!lstrcmpW( str, _bstr_("Model")), "got %s\n", wine_dbgstr_w(str));
        SysFreeString(str);

        IXMLDOMAttribute_Release(attr);
        IXMLDOMElement_Release(elem);

        IXMLDOMNode_Release(node2);
        IXMLDOMNode_Release(node);
    }

    IXMLDOMDocument_Release(doc);

    free_bstrs();
}
