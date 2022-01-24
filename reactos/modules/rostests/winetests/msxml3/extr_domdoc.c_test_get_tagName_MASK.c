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
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem, *elem2;
    HRESULT hr;
    BSTR str;

    doc = FUNC6(&IID_IXMLDOMDocument);

    hr = FUNC1(doc, FUNC5("element"), &elem);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(elem, NULL);
    FUNC9(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    str = NULL;
    hr = FUNC3(elem, &str);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(!FUNC8(str, FUNC5("element")), "got %s\n", FUNC10(str));
    FUNC4(str);

    hr = FUNC1(doc, FUNC5("s:element"), &elem2);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);

    str = NULL;
    hr = FUNC3(elem2, &str);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(!FUNC8(str, FUNC5("s:element")), "got %s\n", FUNC10(str));
    FUNC4(str);

    FUNC2(elem);
    FUNC2(elem2);
    FUNC0(doc);
    FUNC7();
}