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
typedef  int /*<<< orphan*/  IXMLDOMDocumentType ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  szEmailXML ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR emailW[] = {'e','m','a','i','l',0};
    IXMLDOMDocumentType *doctype;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR s;

    doc = FUNC8(&IID_IXMLDOMDocument);

    hr = FUNC4(doc, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    doctype = (void*)0xdeadbeef;
    hr = FUNC4(doc, &doctype);
    FUNC10(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC10(doctype == NULL, "got %p\n", doctype);

    hr = FUNC5(doc, FUNC7(szEmailXML), &b);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(b == VARIANT_TRUE, "failed to load XML string\n");

    doctype = NULL;
    hr = FUNC4(doc, &doctype);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(doctype != NULL, "got %p\n", doctype);

    hr = FUNC1(doctype, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC1(doctype, &s);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(!FUNC9(emailW, s), "got name %s\n", FUNC11(s));
    FUNC6(s);

    hr = FUNC2(doctype, &s);
    FUNC10(hr == S_OK, "got 0x%08x\n", hr);
    FUNC10(!FUNC9(emailW, s), "got name %s\n", FUNC11(s));
    FUNC6(s);

    FUNC0(doctype);
    FUNC3(doc);
}