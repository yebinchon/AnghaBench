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
typedef  int /*<<< orphan*/  IXMLParser ;
typedef  int /*<<< orphan*/  IXMLNodeFactory ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_XMLParser30 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IXMLParser ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ XMLFLAG_SAX ; 
 scalar_t__ XMLPARSER_IDLE ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  thenodefactory ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    IXMLParser *parser;
    IXMLNodeFactory *nodefactory;
    DWORD flags;

    hr = FUNC0(&CLSID_XMLParser30, NULL, CLSCTX_INPROC_SERVER, &IID_IXMLParser, (void**)&parser);
    if (FUNC1(hr))
    {
        FUNC10("IXMLParser is not available (0x%08x)\n", hr);
        return;
    }

    flags = FUNC3(parser);
    FUNC9(flags == 0, "Expected 0 got %d\n", flags);

    hr = FUNC7(parser, XMLFLAG_SAX);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    flags = FUNC3(parser);
    FUNC9(flags == XMLFLAG_SAX, "Expected 0 got %d\n", flags);

    hr = FUNC2(parser, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected S_OK got 0x%08x\n", hr);

    hr = FUNC2(parser, &nodefactory);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);
    FUNC9(nodefactory == NULL, "expected NULL\n");

    hr = FUNC6(parser, &thenodefactory);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = FUNC2(parser, &nodefactory);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);
    FUNC9(nodefactory == &thenodefactory, "expected NULL\n");

    hr = FUNC8(parser, NULL);
    FUNC9(hr == E_INVALIDARG, "Expected S_OK got 0x%08x\n", hr);

    hr = FUNC6(parser, NULL);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = FUNC7(parser, 0);
    FUNC9(hr == S_OK, "Expected S_OK got 0x%08x\n", hr);

    hr = FUNC4(parser);
    FUNC9(hr == XMLPARSER_IDLE, "got 0x%08x\n", hr);

    FUNC5(parser);
}