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
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  IXMLDOMAttribute ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  nonexistent_attrW ; 
 int /*<<< orphan*/  nonexistent_fileW ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* szExampleXML ; 

__attribute__((used)) static void FUNC13(void)
{
    IXMLDOMAttribute *attr;
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    VARIANT_BOOL v;
    HRESULT hr;
    BSTR str;

    doc = FUNC10(&IID_IXMLDOMDocument);

    hr = FUNC4(doc, FUNC9(szExampleXML), &v);
    FUNC0(hr, S_OK);

    hr = FUNC3(doc, &elem);
    FUNC0(hr, S_OK);

    str = FUNC7(nonexistent_fileW);
    hr = FUNC6(elem, str, NULL);
    FUNC0(hr, E_FAIL);

    attr = (IXMLDOMAttribute*)0xdeadbeef;
    hr = FUNC6(elem, str, &attr);
    FUNC0(hr, E_FAIL);
    FUNC12(attr == NULL, "got %p\n", attr);
    FUNC8(str);

    str = FUNC7(nonexistent_attrW);
    hr = FUNC6(elem, str, NULL);
    FUNC0(hr, S_FALSE);

    attr = (IXMLDOMAttribute*)0xdeadbeef;
    hr = FUNC6(elem, str, &attr);
    FUNC0(hr, S_FALSE);
    FUNC12(attr == NULL, "got %p\n", attr);
    FUNC8(str);

    hr = FUNC6(elem, FUNC9("foo:b"), &attr);
    FUNC0(hr, S_OK);
    FUNC1(attr);

    hr = FUNC6(elem, FUNC9("b"), &attr);
    FUNC0(hr, S_FALSE);

    hr = FUNC6(elem, FUNC9("a"), &attr);
    FUNC0(hr, S_OK);
    FUNC1(attr);

    FUNC5(elem);
    FUNC2(doc);
    FUNC11();
}