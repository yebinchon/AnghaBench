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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__ VT_NULL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,scalar_t__) ; 
 char* szExampleXML ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *elem;
    VARIANT_BOOL v;
    VARIANT var;
    HRESULT hr;

    doc = FUNC11(&IID_IXMLDOMDocument);

    hr = FUNC3(doc, FUNC10(szExampleXML), &v);
    FUNC0(hr, S_OK);

    hr = FUNC2(doc, &elem);
    FUNC0(hr, S_OK);

    FUNC9(&var);
    hr = FUNC5( elem, FUNC10("xmlns:foo"), &var );
    FUNC0(hr, S_OK);
    FUNC14( FUNC7(&var) == VT_BSTR, "vt = %x\n", FUNC7(&var));
    FUNC14( !FUNC13(FUNC6(&var), FUNC10("urn:uuid:86B2F87F-ACB6-45cd-8B77-9BDB92A01A29")), "wrong attr value: %s\n", FUNC15(FUNC6(&var)));
    FUNC8(&var);

    hr = FUNC5( elem, FUNC10("a"), &var );
    FUNC0(hr, S_OK);
    FUNC14( FUNC7(&var) == VT_BSTR, "vt = %x\n", FUNC7(&var));
    FUNC14( !FUNC13(FUNC6(&var), FUNC10("attr a")), "wrong attr value: %s\n", FUNC15(FUNC6(&var)));
    FUNC8(&var);

    hr = FUNC5( elem, FUNC10("foo:b"), &var );
    FUNC0(hr, S_OK);
    FUNC14( FUNC7(&var) == VT_BSTR, "vt = %x\n", FUNC7(&var));
    FUNC14( !FUNC13(FUNC6(&var), FUNC10("attr b")), "wrong attr value: %s\n", FUNC15(FUNC6(&var)));
    FUNC8(&var);

    hr = FUNC5( elem, FUNC10("b"), &var );
    FUNC0(hr, S_FALSE);
    FUNC14( FUNC7(&var) == VT_NULL, "vt = %x\n", FUNC7(&var));
    FUNC8(&var);

    hr = FUNC5( elem, FUNC10("non-existent"), &var );
    FUNC0(hr, S_FALSE);
    FUNC14( FUNC7(&var) == VT_NULL, "vt = %x\n", FUNC7(&var));
    FUNC8(&var);

    FUNC4(elem);
    FUNC1(doc);
    FUNC12();
}