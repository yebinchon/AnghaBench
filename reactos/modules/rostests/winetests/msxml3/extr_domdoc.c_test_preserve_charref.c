
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IXMLDOMDocument2_get_documentElement (int *,int **) ;
 scalar_t__ IXMLDOMDocument2_loadXML (int *,int ,scalar_t__*) ;
 scalar_t__ IXMLDOMDocument2_put_preserveWhiteSpace (int *,scalar_t__) ;
 int IXMLDOMElement_Release (int *) ;
 scalar_t__ IXMLDOMElement_get_childNodes (int *,int **) ;
 int IXMLDOMNodeList_Release (int *) ;
 scalar_t__ IXMLDOMNodeList_get_item (int *,int,int **) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_text (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VARIANT_TRUE ;
 int _bstr_ (int ) ;
 int charrefsxml ;
 int lstrcmpW (int ,char const*) ;
 int ok (int,char*,scalar_t__,...) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_preserve_charref(IXMLDOMDocument2 *doc, VARIANT_BOOL preserve)
{
    static const WCHAR b1_p[] = {' ','T','e','x','t',' ','A',' ','e','n','d',' ',0};
    static const WCHAR b1_i[] = {'T','e','x','t',' ','A',' ','e','n','d',0};
    static const WCHAR b2_p[] = {'A','B',' ','C',' ',0};
    static const WCHAR b2_i[] = {'A','B',' ','C',0};
    IXMLDOMNodeList *list;
    IXMLDOMElement *root;
    IXMLDOMNode *node;
    const WCHAR *text;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR s;

    hr = IXMLDOMDocument2_put_preserveWhiteSpace(doc, preserve);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument2_loadXML(doc, _bstr_(charrefsxml), &b);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument2_get_documentElement(doc, &root);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXMLDOMElement_get_childNodes(root, &list);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IXMLDOMElement_Release(root);

    text = preserve == VARIANT_TRUE ? b1_p : b1_i;
    hr = IXMLDOMNodeList_get_item(list, 0, &node);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IXMLDOMNode_get_text(node, &s);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(s, text), "0x%x, got %s\n", preserve, wine_dbgstr_w(s));
    SysFreeString(s);
    IXMLDOMNode_Release(node);

    text = preserve == VARIANT_TRUE ? b2_p : b2_i;
    hr = IXMLDOMNodeList_get_item(list, 1, &node);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IXMLDOMNode_get_text(node, &s);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(!lstrcmpW(s, text), "0x%x, got %s\n", preserve, wine_dbgstr_w(s));
    SysFreeString(s);
    IXMLDOMNode_Release(node);

    IXMLDOMNodeList_Release(list);
}
