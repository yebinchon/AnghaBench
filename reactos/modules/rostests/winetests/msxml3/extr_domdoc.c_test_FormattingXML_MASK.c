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
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *pElement;
    VARIANT_BOOL bSucc;
    HRESULT hr;
    BSTR str;
    static const CHAR szLinefeedXML[] = "<?xml version=\"1.0\"?>\n<Root>\n\t<Sub val=\"A\" />\n</Root>";
    static const CHAR szLinefeedRootXML[] = "<Root>\r\n\t<Sub val=\"A\"/>\r\n</Root>";

    doc = FUNC7(&IID_IXMLDOMDocument);

    hr = FUNC2(doc, FUNC6(szLinefeedXML), &bSucc);
    FUNC10(hr == S_OK, "ret %08x\n", hr );
    FUNC10(bSucc == VARIANT_TRUE, "Expected VARIANT_TRUE got VARIANT_FALSE\n");

    if(bSucc == VARIANT_TRUE)
    {
        hr = FUNC1(doc, &pElement);
        FUNC10(hr == S_OK, "ret %08x\n", hr );
        if(hr == S_OK)
        {
            hr = FUNC4(pElement, &str);
            FUNC10(hr == S_OK, "ret %08x\n", hr );
            FUNC10( !FUNC9( str, FUNC6(szLinefeedRootXML) ), "incorrect element xml\n");
            FUNC5(str);

            FUNC3(pElement);
        }
    }

    FUNC0(doc);

    FUNC8();
}