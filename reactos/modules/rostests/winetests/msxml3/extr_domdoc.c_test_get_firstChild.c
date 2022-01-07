
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_get_firstChild (int *,int **) ;
 scalar_t__ IXMLDOMDocument_loadXML (int *,int ,scalar_t__*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_nodeName (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VARIANT_TRUE ;
 int _bstr_ (int ) ;
 int complete4A ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int lstrcmpW (int ,char const*) ;
 int ok (int,char*,...) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_get_firstChild(void)
{
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXMLDOMDocument *doc;
    IXMLDOMNode *node;
    VARIANT_BOOL b;
    HRESULT r;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);

    r = IXMLDOMDocument_loadXML( doc, _bstr_(complete4A), &b );
    ok( r == S_OK, "loadXML failed\n");
    ok( b == VARIANT_TRUE, "failed to load XML string\n");

    r = IXMLDOMDocument_get_firstChild( doc, &node );
    ok( r == S_OK, "ret %08x\n", r);

    r = IXMLDOMNode_get_nodeName( node, &str );
    ok( r == S_OK, "ret %08x\n", r);

    ok(!lstrcmpW(str, xmlW), "expected \"xml\" node name, got %s\n", wine_dbgstr_w(str));

    SysFreeString(str);
    IXMLDOMNode_Release( node );
    IXMLDOMDocument_Release( doc );

    free_bstrs();
}
