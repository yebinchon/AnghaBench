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
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 char* omitxmldecl_doc ; 
 char* omitxmldecl_xsl ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 char* xsltext_xsl ; 

__attribute__((used)) static void FUNC11(void)
{
    IXMLDOMDocument *doc, *doc2;
    VARIANT_BOOL b;
    HRESULT hr;
    BSTR ret;

    doc = FUNC6(&IID_IXMLDOMDocument);
    doc2 = FUNC6(&IID_IXMLDOMDocument);

    hr = FUNC2(doc, FUNC5(xsltext_xsl), &b);
    FUNC0(hr, S_OK);

    hr = FUNC2(doc2, FUNC5("<testkey/>"), &b);
    FUNC0(hr, S_OK);

    hr = FUNC3(doc2, (IXMLDOMNode*)doc, &ret);
    FUNC0(hr, S_OK);
    FUNC9(!FUNC8(ret, FUNC5("testdata")), "transform result %s\n", FUNC10(ret));
    FUNC4(ret);

    /* omit-xml-declaration */
    hr = FUNC2(doc, FUNC5(omitxmldecl_xsl), &b);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC2(doc2, FUNC5(omitxmldecl_doc), &b);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(doc2, (IXMLDOMNode*)doc, &ret);
    FUNC9(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(!FUNC8(ret, FUNC5("<node>item1</node><node>item2</node>")), "transform result %s\n", FUNC10(ret));
    FUNC4(ret);

    FUNC1(doc2);
    FUNC1(doc);
    FUNC7();
}