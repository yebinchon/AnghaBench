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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  void IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  void* HRESULT ;

/* Variables and functions */
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ **) ; 
 void* S_FALSE ; 
 void* S_OK ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 char* complete4A ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 

__attribute__((used)) static void FUNC16(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *element;
    IXMLDOMNode *pr_node, *node;
    IXMLDOMNodeList *root_list;
    IXMLDOMNamedNodeMap *map;
    VARIANT_BOOL b;
    LONG len;
    HRESULT hr;

    doc = FUNC13(&IID_IXMLDOMDocument);

    hr = FUNC2( doc, FUNC12(complete4A), &b );
    FUNC15( hr == S_OK, "loadXML failed\n");
    FUNC15( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = FUNC1(doc, &element);
    FUNC15( hr == S_OK, "ret %08x\n", hr);

    hr = FUNC4(element, &root_list);
    FUNC15( hr == S_OK, "ret %08x\n", hr);

    hr = FUNC9(root_list, 1, &pr_node);
    FUNC15( hr == S_OK, "ret %08x\n", hr);
    FUNC8(root_list);

    hr = FUNC11(pr_node, &map);
    FUNC15( hr == S_OK, "ret %08x\n", hr);
    FUNC10(pr_node);

    hr = FUNC6(map, &len);
    FUNC15( hr == S_OK, "ret %08x\n", hr);
    FUNC15( len == 3, "length %d\n", len);

    hr = FUNC7(map, NULL, NULL, NULL);
    FUNC15( hr == E_INVALIDARG, "ret %08x\n", hr);

    node = (void*)0xdeadbeef;
    hr = FUNC7(map, NULL, NULL, &node);
    FUNC15( hr == E_INVALIDARG, "ret %08x\n", hr);
    FUNC15( node == (void*)0xdeadbeef, "got %p\n", node);

    /* out pointer is optional */
    hr = FUNC7(map, FUNC12("id"), NULL, NULL);
    FUNC15( hr == S_OK, "ret %08x\n", hr);

    /* already removed */
    hr = FUNC7(map, FUNC12("id"), NULL, NULL);
    FUNC15( hr == S_FALSE, "ret %08x\n", hr);

    hr = FUNC7(map, FUNC12("vr"), NULL, &node);
    FUNC15( hr == S_OK, "ret %08x\n", hr);
    FUNC10(node);

    FUNC5( map );
    FUNC3( element );
    FUNC0( doc );
    FUNC14();
}