
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; char* uri; int hr; } ;
typedef TYPE_1__ ns_item_t ;
typedef scalar_t__ VARIANT_BOOL ;
typedef int LONG ;
typedef int IXMLDOMNodeList ;
typedef void IXMLDOMNode ;
typedef int IXMLDOMNamedNodeMap ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument ;
typedef int HRESULT ;


 int EXPECT_HR (int ,int ) ;
 int E_INVALIDARG ;
 int IID_IXMLDOMDocument ;
 int IID_IXMLDOMElement ;
 int IXMLDOMDocument_Release (int *) ;
 int IXMLDOMDocument_get_documentElement (int *,int **) ;
 int IXMLDOMDocument_loadXML (int *,int *,scalar_t__*) ;
 int IXMLDOMDocument_selectSingleNode (int *,int *,void**) ;
 int IXMLDOMElement_Release (int *) ;
 int IXMLDOMElement_get_attributes (int *,int **) ;
 int IXMLDOMElement_get_childNodes (int *,int **) ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 int IXMLDOMNamedNodeMap_getNamedItem (int *,int *,void**) ;
 int IXMLDOMNamedNodeMap_getQualifiedItem (int *,int *,int *,void**) ;
 int IXMLDOMNamedNodeMap_get_length (int *,int*) ;
 int IXMLDOMNodeList_Release (int *) ;
 int IXMLDOMNodeList_get_item (int *,int,void**) ;
 int IXMLDOMNode_QueryInterface (void*,int *,void**) ;
 int IXMLDOMNode_Release (void*) ;
 int IXMLDOMNode_get_attributes (void*,int **) ;
 int S_OK ;
 scalar_t__ VARIANT_TRUE ;
 int * _bstr_ (char*) ;
 char* complete4A ;
 int * create_document (int *) ;
 char* default_ns_doc ;
 int free_bstrs () ;
 TYPE_1__* named_item_tests ;
 int ok (int,char*,...) ;
 TYPE_1__* qualified_item_tests ;

__attribute__((used)) static void test_getQualifiedItem(void)
{
    IXMLDOMNode *pr_node, *node;
    IXMLDOMNodeList *root_list;
    IXMLDOMNamedNodeMap *map;
    IXMLDOMElement *element;
    const ns_item_t* ptr;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    HRESULT hr;
    LONG len;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_loadXML( doc, _bstr_(complete4A), &b );
    EXPECT_HR(hr, S_OK);
    ok( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = IXMLDOMDocument_get_documentElement(doc, &element);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMElement_get_childNodes(element, &root_list);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMNodeList_get_item(root_list, 1, &pr_node);
    EXPECT_HR(hr, S_OK);
    IXMLDOMNodeList_Release(root_list);

    hr = IXMLDOMNode_get_attributes(pr_node, &map);
    EXPECT_HR(hr, S_OK);
    IXMLDOMNode_Release(pr_node);

    len = 0;
    hr = IXMLDOMNamedNodeMap_get_length(map, &len);
    EXPECT_HR(hr, S_OK);
    ok( len == 3, "length %d\n", len);

    hr = IXMLDOMNamedNodeMap_getQualifiedItem(map, ((void*)0), ((void*)0), ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    node = (void*)0xdeadbeef;
    hr = IXMLDOMNamedNodeMap_getQualifiedItem(map, ((void*)0), ((void*)0), &node);
    EXPECT_HR(hr, E_INVALIDARG);
    ok( node == (void*)0xdeadbeef, "got %p\n", node);

    hr = IXMLDOMNamedNodeMap_getQualifiedItem(map, _bstr_("id"), ((void*)0), ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    hr = IXMLDOMNamedNodeMap_getQualifiedItem(map, _bstr_("id"), ((void*)0), &node);
    EXPECT_HR(hr, S_OK);

    IXMLDOMNode_Release(node);
    IXMLDOMNamedNodeMap_Release(map);
    IXMLDOMElement_Release(element);

    hr = IXMLDOMDocument_loadXML(doc, _bstr_(default_ns_doc), &b);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("a"), &node);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMNode_QueryInterface(node, &IID_IXMLDOMElement, (void**)&element);
    EXPECT_HR(hr, S_OK);
    IXMLDOMNode_Release(node);

    hr = IXMLDOMElement_get_attributes(element, &map);
    EXPECT_HR(hr, S_OK);

    ptr = qualified_item_tests;
    while (ptr->name)
    {
       node = (void*)0xdeadbeef;
       hr = IXMLDOMNamedNodeMap_getQualifiedItem(map, _bstr_(ptr->name), _bstr_(ptr->uri), &node);
       ok(hr == ptr->hr, "%s, %s: got 0x%08x, expected 0x%08x\n", ptr->name, ptr->uri, hr, ptr->hr);
       if (hr == S_OK)
           IXMLDOMNode_Release(node);
       else
           ok(node == ((void*)0), "%s, %s: got %p\n", ptr->name, ptr->uri, node);
       ptr++;
    }

    ptr = named_item_tests;
    while (ptr->name)
    {
       node = (void*)0xdeadbeef;
       hr = IXMLDOMNamedNodeMap_getNamedItem(map, _bstr_(ptr->name), &node);
       ok(hr == ptr->hr, "%s: got 0x%08x, expected 0x%08x\n", ptr->name, hr, ptr->hr);
       if (hr == S_OK)
           IXMLDOMNode_Release(node);
       else
           ok(node == ((void*)0), "%s: got %p\n", ptr->name, node);
       ptr++;
    }

    IXMLDOMNamedNodeMap_Release(map);

    IXMLDOMElement_Release(element);
    IXMLDOMDocument_Release(doc);
    free_bstrs();
}
