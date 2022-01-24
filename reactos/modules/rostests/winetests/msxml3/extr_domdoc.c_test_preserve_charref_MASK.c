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
typedef  char WCHAR ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  charrefsxml ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(IXMLDOMDocument2 *doc, VARIANT_BOOL preserve)
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

    hr = FUNC2(doc, preserve);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC1(doc, FUNC10(charrefsxml), &b);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC0(doc, &root);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC4(root, &list);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);
    FUNC3(root);

    text = preserve == VARIANT_TRUE ? b1_p : b1_i;
    hr = FUNC6(list, 0, &node);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC8(node, &s);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);
    FUNC12(!FUNC11(s, text), "0x%x, got %s\n", preserve, FUNC13(s));
    FUNC9(s);
    FUNC7(node);

    text = preserve == VARIANT_TRUE ? b2_p : b2_i;
    hr = FUNC6(list, 1, &node);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC8(node, &s);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);
    FUNC12(!FUNC11(s, text), "0x%x, got %s\n", preserve, FUNC13(s));
    FUNC9(s);
    FUNC7(node);

    FUNC5(list);
}