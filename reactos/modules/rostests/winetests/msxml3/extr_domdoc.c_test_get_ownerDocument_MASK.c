#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IXMLDOMSchemaCollection ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument2 ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  IXMLDOMAttribute ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_DOMDocument2 ; 
 int /*<<< orphan*/  CLSID_XMLSchemaCache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument2 ; 
 int /*<<< orphan*/  IID_IXMLDOMElement ; 
 int /*<<< orphan*/  IID_IXMLDOMSchemaCollection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 char* complete4A ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC32(void)
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

    if (!FUNC27(&CLSID_DOMDocument2, &IID_IXMLDOMDocument2)) return;
    if (!FUNC27(&CLSID_XMLSchemaCache, &IID_IXMLDOMSchemaCollection)) return;

    doc = FUNC25(&IID_IXMLDOMDocument2);
    cache = FUNC24(&IID_IXMLDOMSchemaCollection);

    FUNC20(&var);

    FUNC29(FUNC5(doc, FUNC21(complete4A), &b));
    FUNC28(b == VARIANT_TRUE, "failed to load XML string\n");

    FUNC22(doc);

    /* set properties and check that new instances use them */
    FUNC30(doc, cache);
    FUNC23(doc);

    FUNC29(FUNC4(doc, &node));
    FUNC29(FUNC18(node, &doc1));

    /* new interface keeps props */
    FUNC29(FUNC6(doc1, &IID_IXMLDOMDocument2, (void**)&doc_owner));
    FUNC28( doc_owner != doc, "got %p, doc %p\n", doc_owner, doc);
    FUNC23(doc_owner);
    FUNC3(doc_owner);

    FUNC29(FUNC18(node, &doc2));
    FUNC17(node);

    FUNC28(doc1 != doc2, "got %p, expected %p. original %p\n", doc2, doc1, doc);

    /* reload */
    FUNC29(FUNC5(doc, FUNC21(complete4A), &b));
    FUNC28(b == VARIANT_TRUE, "failed to load XML string\n");

    /* properties retained even after reload */
    FUNC23(doc);

    FUNC29(FUNC4(doc, &node));
    FUNC29(FUNC18(node, &doc3));
    FUNC17(node);

    FUNC29(FUNC6(doc3, &IID_IXMLDOMDocument2, (void**)&doc_owner));
    FUNC28(doc3 != doc1 && doc3 != doc2 && doc_owner != doc, "got %p, (%p, %p, %p)\n", doc3, doc, doc1, doc2);
    FUNC23(doc_owner);

    /* changing properties for one instance changes them for all */
    FUNC31(doc_owner);
    FUNC22(doc_owner);
    FUNC22(doc);

    /* NULL check */
    hr = FUNC9(doc1, FUNC21(nodeXML), &b);
    FUNC0(hr, S_OK);
    FUNC28(b == VARIANT_TRUE, "failed to load XML string\n");

    hr = FUNC8(doc1, &element);
    FUNC0(hr, S_OK);

    hr = FUNC12(element, &node_list);
    FUNC0(hr, S_OK);

    hr = FUNC15(node_list, &len);
    FUNC0(hr, S_OK);

    for(i = 0; i < len; i++) {
        hr = FUNC14(node_list, i, &node);
        FUNC0(hr, S_OK);

        hr = FUNC18(node, NULL);
        FUNC0(hr, E_INVALIDARG);

        FUNC17(node);
    }
    FUNC10(element);

    /* Test Attribute Node */
    hr = FUNC14(node_list, 2, &node);
    FUNC0(hr, S_OK);
    hr = FUNC16(node, &IID_IXMLDOMElement, (void**)&element);
    FUNC0(hr, S_OK);
    FUNC17(node);

    hr = FUNC11(element, FUNC21("attr"), &attr);
    FUNC0(hr, S_OK);
    FUNC28(attr != NULL, "attr == NULL\n");
    FUNC10(element);
    hr = FUNC2(attr, NULL);
    FUNC0(hr, E_INVALIDARG);
    FUNC1(attr);
    FUNC13(node_list);

    FUNC19(cache);
    FUNC7(doc1);
    FUNC7(doc2);
    FUNC7(doc3);
    FUNC3(doc);
    FUNC3(doc_owner);
    FUNC26();
}