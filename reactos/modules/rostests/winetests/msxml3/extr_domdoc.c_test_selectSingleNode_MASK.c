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
typedef  void* LONG ;
typedef  void IXMLDOMNodeList ;
typedef  void IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  void* HRESULT ;

/* Variables and functions */
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*,void**) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* S_FALSE ; 
 void* S_OK ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 char* complete4A ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMNodeList *list;
    IXMLDOMNode *node;
    VARIANT_BOOL b;
    HRESULT hr;
    LONG len;

    doc = FUNC8(&IID_IXMLDOMDocument);

    hr = FUNC3(doc, NULL, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC2(doc, NULL, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC1( doc, FUNC7(complete4A), &b );
    FUNC10( hr == S_OK, "loadXML failed\n");
    FUNC10( b == VARIANT_TRUE, "failed to load XML string\n");

    hr = FUNC3(doc, NULL, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC2(doc, NULL, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(doc, FUNC7("lc"), NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC2(doc, FUNC7("lc"), NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(doc, FUNC7("lc"), &node);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC6(node);

    hr = FUNC2(doc, FUNC7("lc"), &list);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC4(list);

    list = (void*)0xdeadbeef;
    hr = FUNC2(doc, NULL, &list);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    FUNC10(list == (void*)0xdeadbeef, "got %p\n", list);

    node = (void*)0xdeadbeef;
    hr = FUNC3(doc, FUNC7("nonexistent"), &node);
    FUNC10(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC10(node == 0, "got %p\n", node);

    list = (void*)0xdeadbeef;
    hr = FUNC2(doc, FUNC7("nonexistent"), &list);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    len = 1;
    hr = FUNC5(list, &len);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(len == 0, "got %d\n", len);
    FUNC4(list);

    FUNC0(doc);
    FUNC9();
}