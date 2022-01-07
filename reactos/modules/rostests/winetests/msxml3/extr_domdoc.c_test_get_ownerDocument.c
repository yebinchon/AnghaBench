
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef int VARIANT ;
typedef scalar_t__ LONG ;
typedef int IXMLDOMSchemaCollection ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMElement ;
typedef int IXMLDOMDocument2 ;
typedef int IXMLDOMDocument ;
typedef int IXMLDOMAttribute ;
typedef int HRESULT ;
typedef char CHAR ;


 int CLSID_DOMDocument2 ;
 int CLSID_XMLSchemaCache ;
 int EXPECT_HR (int ,int ) ;
 int E_INVALIDARG ;
 int IID_IXMLDOMDocument2 ;
 int IID_IXMLDOMElement ;
 int IID_IXMLDOMSchemaCollection ;
 int IXMLDOMAttribute_Release (int *) ;
 int IXMLDOMAttribute_get_ownerDocument (int *,int *) ;
 int IXMLDOMDocument2_Release (int *) ;
 int IXMLDOMDocument2_get_firstChild (int *,int **) ;
 int IXMLDOMDocument2_loadXML (int *,int ,scalar_t__*) ;
 int IXMLDOMDocument_QueryInterface (int *,int *,void**) ;
 int IXMLDOMDocument_Release (int *) ;
 int IXMLDOMDocument_get_documentElement (int *,int **) ;
 int IXMLDOMDocument_loadXML (int *,int ,scalar_t__*) ;
 int IXMLDOMElement_Release (int *) ;
 int IXMLDOMElement_getAttributeNode (int *,int ,int **) ;
 int IXMLDOMElement_get_childNodes (int *,int **) ;
 int IXMLDOMNodeList_Release (int *) ;
 int IXMLDOMNodeList_get_item (int *,int,int **) ;
 int IXMLDOMNodeList_get_length (int *,scalar_t__*) ;
 int IXMLDOMNode_QueryInterface (int *,int *,void**) ;
 int IXMLDOMNode_Release (int *) ;
 int IXMLDOMNode_get_ownerDocument (int *,int **) ;
 int IXMLDOMSchemaCollection_Release (int *) ;
 int S_OK ;
 scalar_t__ VARIANT_TRUE ;
 int VariantInit (int *) ;
 int _bstr_ (char const*) ;
 int check_default_props (int *) ;
 int check_set_props (int *) ;
 char* complete4A ;
 int * create_cache (int *) ;
 int * create_document (int *) ;
 int free_bstrs () ;
 int is_clsid_supported (int *,int *) ;
 int ok (int,char*,...) ;
 int ole_check (int ) ;
 int set_props (int *,int *) ;
 int unset_props (int *) ;

__attribute__((used)) static void test_get_ownerDocument(void)
{
    IXMLDOMDocument *doc1, *doc2, *doc3;
    IXMLDOMDocument2 *doc, *doc_owner;
    IXMLDOMNode *node;
    IXMLDOMSchemaCollection *cache;
    VARIANT_BOOL b;
    VARIANT var;
    IXMLDOMElement *element;
    IXMLDOMNodeList *node_list;
    IXMLDOMAttribute *attr;
    LONG i, len;
    HRESULT hr;
    const CHAR nodeXML[] =
    "<root id='0'>"
    "   <!-- comment node 0 -->"
    "   text node 0"
    "   <x attr='val'></x>"
    "   <?foo value='PI for x'?>"
    "   <![CDATA[ cdata ]]>"
    "</root>";

    if (!is_clsid_supported(&CLSID_DOMDocument2, &IID_IXMLDOMDocument2)) return;
    if (!is_clsid_supported(&CLSID_XMLSchemaCache, &IID_IXMLDOMSchemaCollection)) return;

    doc = create_document(&IID_IXMLDOMDocument2);
    cache = create_cache(&IID_IXMLDOMSchemaCollection);

    VariantInit(&var);

    ole_check(IXMLDOMDocument2_loadXML(doc, _bstr_(complete4A), &b));
    ok(b == VARIANT_TRUE, "failed to load XML string\n");

    check_default_props(doc);


    set_props(doc, cache);
    check_set_props(doc);

    ole_check(IXMLDOMDocument2_get_firstChild(doc, &node));
    ole_check(IXMLDOMNode_get_ownerDocument(node, &doc1));


    ole_check(IXMLDOMDocument_QueryInterface(doc1, &IID_IXMLDOMDocument2, (void**)&doc_owner));
    ok( doc_owner != doc, "got %p, doc %p\n", doc_owner, doc);
    check_set_props(doc_owner);
    IXMLDOMDocument2_Release(doc_owner);

    ole_check(IXMLDOMNode_get_ownerDocument(node, &doc2));
    IXMLDOMNode_Release(node);

    ok(doc1 != doc2, "got %p, expected %p. original %p\n", doc2, doc1, doc);


    ole_check(IXMLDOMDocument2_loadXML(doc, _bstr_(complete4A), &b));
    ok(b == VARIANT_TRUE, "failed to load XML string\n");


    check_set_props(doc);

    ole_check(IXMLDOMDocument2_get_firstChild(doc, &node));
    ole_check(IXMLDOMNode_get_ownerDocument(node, &doc3));
    IXMLDOMNode_Release(node);

    ole_check(IXMLDOMDocument_QueryInterface(doc3, &IID_IXMLDOMDocument2, (void**)&doc_owner));
    ok(doc3 != doc1 && doc3 != doc2 && doc_owner != doc, "got %p, (%p, %p, %p)\n", doc3, doc, doc1, doc2);
    check_set_props(doc_owner);


    unset_props(doc_owner);
    check_default_props(doc_owner);
    check_default_props(doc);


    hr = IXMLDOMDocument_loadXML(doc1, _bstr_(nodeXML), &b);
    EXPECT_HR(hr, S_OK);
    ok(b == VARIANT_TRUE, "failed to load XML string\n");

    hr = IXMLDOMDocument_get_documentElement(doc1, &element);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMElement_get_childNodes(element, &node_list);
    EXPECT_HR(hr, S_OK);

    hr = IXMLDOMNodeList_get_length(node_list, &len);
    EXPECT_HR(hr, S_OK);

    for(i = 0; i < len; i++) {
        hr = IXMLDOMNodeList_get_item(node_list, i, &node);
        EXPECT_HR(hr, S_OK);

        hr = IXMLDOMNode_get_ownerDocument(node, ((void*)0));
        EXPECT_HR(hr, E_INVALIDARG);

        IXMLDOMNode_Release(node);
    }
    IXMLDOMElement_Release(element);


    hr = IXMLDOMNodeList_get_item(node_list, 2, &node);
    EXPECT_HR(hr, S_OK);
    hr = IXMLDOMNode_QueryInterface(node, &IID_IXMLDOMElement, (void**)&element);
    EXPECT_HR(hr, S_OK);
    IXMLDOMNode_Release(node);

    hr = IXMLDOMElement_getAttributeNode(element, _bstr_("attr"), &attr);
    EXPECT_HR(hr, S_OK);
    ok(attr != ((void*)0), "attr == NULL\n");
    IXMLDOMElement_Release(element);
    hr = IXMLDOMAttribute_get_ownerDocument(attr, ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);
    IXMLDOMAttribute_Release(attr);
    IXMLDOMNodeList_Release(node_list);

    IXMLDOMSchemaCollection_Release(cache);
    IXMLDOMDocument_Release(doc1);
    IXMLDOMDocument_Release(doc2);
    IXMLDOMDocument_Release(doc3);
    IXMLDOMDocument2_Release(doc);
    IXMLDOMDocument2_Release(doc_owner);
    free_bstrs();
}
