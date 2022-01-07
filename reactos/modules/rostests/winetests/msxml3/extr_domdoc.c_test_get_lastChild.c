
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lcW ;
typedef int foW ;
typedef char WCHAR ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_get_lastChild (int *,int **) ;
 scalar_t__ IXMLDOMDocument_loadXML (int *,int ,scalar_t__*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_lastChild (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_nodeName (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ VARIANT_TRUE ;
 int _bstr_ (int ) ;
 int complete4A ;
 int * create_document (int *) ;
 int free_bstrs () ;
 scalar_t__ memcmp (int ,char const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_get_lastChild(void)
{
    static const WCHAR lcW[] = {'l','c',0};
    static const WCHAR foW[] = {'f','o',0};
    IXMLDOMDocument *doc;
    IXMLDOMNode *node, *child;
    VARIANT_BOOL b;
    HRESULT r;
    BSTR str;

    doc = create_document(&IID_IXMLDOMDocument);

    r = IXMLDOMDocument_loadXML( doc, _bstr_(complete4A), &b );
    ok( r == S_OK, "loadXML failed\n");
    ok( b == VARIANT_TRUE, "failed to load XML string\n");

    r = IXMLDOMDocument_get_lastChild( doc, &node );
    ok( r == S_OK, "ret %08x\n", r);

    r = IXMLDOMNode_get_nodeName( node, &str );
    ok( r == S_OK, "ret %08x\n", r);

    ok(memcmp(str, lcW, sizeof(lcW)) == 0, "expected \"lc\" node name\n");
    SysFreeString(str);

    r = IXMLDOMNode_get_lastChild( node, &child );
    ok( r == S_OK, "ret %08x\n", r);

    r = IXMLDOMNode_get_nodeName( child, &str );
    ok( r == S_OK, "ret %08x\n", r);

    ok(memcmp(str, foW, sizeof(foW)) == 0, "expected \"fo\" node name\n");
    SysFreeString(str);

    IXMLDOMNode_Release( child );
    IXMLDOMNode_Release( node );
    IXMLDOMDocument_Release( doc );

    free_bstrs();
}
