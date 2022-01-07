
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef int LONG ;
typedef int IXMLDOMNodeList ;
typedef void IXMLDOMNode ;
typedef int IXMLDOMNamedNodeMap ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef void* HRESULT ;


 void* E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 void* IXMLDOMDocument_get_documentElement (int *,int **) ;
 void* IXMLDOMDocument_loadXML (int *,int *,scalar_t__*) ;
 int IXMLDOMElement_Release (int *) ;
 void* IXMLDOMElement_get_childNodes (int *,int **) ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 void* IXMLDOMNamedNodeMap_get_length (int *,int*) ;
 void* IXMLDOMNamedNodeMap_removeQualifiedItem (int *,int *,int *,void**) ;
 int IXMLDOMNodeList_Release (int *) ;
 void* IXMLDOMNodeList_get_item (int *,int,void**) ;
 int IXMLDOMNode_Release (void*) ;
 void* IXMLDOMNode_get_attributes (void*,int **) ;
 void* S_FALSE ;
 void* S_OK ;
 scalar_t__ VARIANT_TRUE ;
 int * _bstr_ (char*) ;
 char* complete4A ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_removeQualifiedItem(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *element;
    IXMLDOMNode *pr_node, *node;
    IXMLDOMNodeList *root_list;
    IXMLDOMNamedNodeMap *map;
    VARIANT_BOOL b;
    LONG len;
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML( doc, _bstr_(complete4A), &b );
    ok( hr == S_OK, "loadXML failed\n");
    ok( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = IXMLDOMDocument_get_documentElement(doc, &element);
    ok( hr == S_OK, "ret %08x\n", hr);

    hr = IXMLDOMElement_get_childNodes(element, &root_list);
    ok( hr == S_OK, "ret %08x\n", hr);

    hr = IXMLDOMNodeList_get_item(root_list, 1, &pr_node);
    ok( hr == S_OK, "ret %08x\n", hr);
    IXMLDOMNodeList_Release(root_list);

    hr = IXMLDOMNode_get_attributes(pr_node, &map);
    ok( hr == S_OK, "ret %08x\n", hr);
    IXMLDOMNode_Release(pr_node);

    hr = IXMLDOMNamedNodeMap_get_length(map, &len);
    ok( hr == S_OK, "ret %08x\n", hr);
    ok( len == 3, "length %d\n", len);

    hr = IXMLDOMNamedNodeMap_removeQualifiedItem(map, ((void*)0), ((void*)0), ((void*)0));
    ok( hr == E_INVALIDARG, "ret %08x\n", hr);

    node = (void*)0xdeadbeef;
    hr = IXMLDOMNamedNodeMap_removeQualifiedItem(map, ((void*)0), ((void*)0), &node);
    ok( hr == E_INVALIDARG, "ret %08x\n", hr);
    ok( node == (void*)0xdeadbeef, "got %p\n", node);


    hr = IXMLDOMNamedNodeMap_removeQualifiedItem(map, _bstr_("id"), ((void*)0), ((void*)0));
    ok( hr == S_OK, "ret %08x\n", hr);


    hr = IXMLDOMNamedNodeMap_removeQualifiedItem(map, _bstr_("id"), ((void*)0), ((void*)0));
    ok( hr == S_FALSE, "ret %08x\n", hr);

    hr = IXMLDOMNamedNodeMap_removeQualifiedItem(map, _bstr_("vr"), ((void*)0), &node);
    ok( hr == S_OK, "ret %08x\n", hr);
    IXMLDOMNode_Release(node);

    IXMLDOMNamedNodeMap_Release( map );
    IXMLDOMElement_Release( element );
    IXMLDOMDocument_Release( doc );
    free_bstrs();
}
