#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; char* uri; int /*<<< orphan*/  hr; } ;
typedef  TYPE_1__ ns_item_t ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  void IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  IID_IXMLDOMElement ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC17 (char*) ; 
 char* complete4A ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 char* default_ns_doc ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_1__* named_item_tests ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 TYPE_1__* qualified_item_tests ; 

__attribute__((used)) static void FUNC21(void)
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

    doc = FUNC18(&IID_IXMLDOMDocument);

    hr = FUNC3( doc, FUNC17(complete4A), &b );
    FUNC0(hr, S_OK);
    FUNC20( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = FUNC2(doc, &element);
    FUNC0(hr, S_OK);

    hr = FUNC7(element, &root_list);
    FUNC0(hr, S_OK);

    hr = FUNC13(root_list, 1, &pr_node);
    FUNC0(hr, S_OK);
    FUNC12(root_list);

    hr = FUNC16(pr_node, &map);
    FUNC0(hr, S_OK);
    FUNC15(pr_node);

    len = 0;
    hr = FUNC11(map, &len);
    FUNC0(hr, S_OK);
    FUNC20( len == 3, "length %d\n", len);

    hr = FUNC10(map, NULL, NULL, NULL);
    FUNC0(hr, E_INVALIDARG);

    node = (void*)0xdeadbeef;
    hr = FUNC10(map, NULL, NULL, &node);
    FUNC0(hr, E_INVALIDARG);
    FUNC20( node == (void*)0xdeadbeef, "got %p\n", node);

    hr = FUNC10(map, FUNC17("id"), NULL, NULL);
    FUNC0(hr, E_INVALIDARG);

    hr = FUNC10(map, FUNC17("id"), NULL, &node);
    FUNC0(hr, S_OK);

    FUNC15(node);
    FUNC8(map);
    FUNC5(element);

    hr = FUNC3(doc, FUNC17(default_ns_doc), &b);
    FUNC0(hr, S_OK);

    hr = FUNC4(doc, FUNC17("a"), &node);
    FUNC0(hr, S_OK);

    hr = FUNC14(node, &IID_IXMLDOMElement, (void**)&element);
    FUNC0(hr, S_OK);
    FUNC15(node);

    hr = FUNC6(element, &map);
    FUNC0(hr, S_OK);

    ptr = qualified_item_tests;
    while (ptr->name)
    {
       node = (void*)0xdeadbeef;
       hr = FUNC10(map, FUNC17(ptr->name), FUNC17(ptr->uri), &node);
       FUNC20(hr == ptr->hr, "%s, %s: got 0x%08x, expected 0x%08x\n", ptr->name, ptr->uri, hr, ptr->hr);
       if (hr == S_OK)
           FUNC15(node);
       else
           FUNC20(node == NULL, "%s, %s: got %p\n", ptr->name, ptr->uri, node);
       ptr++;
    }

    ptr = named_item_tests;
    while (ptr->name)
    {
       node = (void*)0xdeadbeef;
       hr = FUNC9(map, FUNC17(ptr->name), &node);
       FUNC20(hr == ptr->hr, "%s: got 0x%08x, expected 0x%08x\n", ptr->name, hr, ptr->hr);
       if (hr == S_OK)
           FUNC15(node);
       else
           FUNC20(node == NULL, "%s: got %p\n", ptr->name, node);
       ptr++;
    }

    FUNC8(map);

    FUNC5(element);
    FUNC1(doc);
    FUNC19();
}