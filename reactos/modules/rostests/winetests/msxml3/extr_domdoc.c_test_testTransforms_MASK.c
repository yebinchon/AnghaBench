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
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  IID_IXMLDOMNode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  szTransformOutput ; 
 int /*<<< orphan*/  szTransformSSXML ; 
 int /*<<< orphan*/  szTransformXML ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    IXMLDOMDocument *doc, *docSS;
    IXMLDOMNode *pNode;
    VARIANT_BOOL bSucc;
    HRESULT hr;

    doc = FUNC8(&IID_IXMLDOMDocument);
    docSS = FUNC8(&IID_IXMLDOMDocument);

    hr = FUNC2(doc, FUNC6(szTransformXML), &bSucc);
    FUNC10(hr == S_OK, "ret %08x\n", hr );

    hr = FUNC2(docSS, FUNC6(szTransformSSXML), &bSucc);
    FUNC10(hr == S_OK, "ret %08x\n", hr );

    hr = FUNC0(docSS, &IID_IXMLDOMNode, (void**)&pNode );
    FUNC10(hr == S_OK, "ret %08x\n", hr );
    if(hr == S_OK)
    {
        BSTR bOut;

        hr = FUNC3(doc, pNode, &bOut);
        FUNC10(hr == S_OK, "ret %08x\n", hr );
        if(hr == S_OK)
        {
            FUNC10( FUNC7( bOut, FUNC6(szTransformOutput)), "got output %s\n", FUNC11(bOut));
            FUNC5(bOut);
        }

        FUNC4(pNode);
    }

    FUNC1(docSS);
    FUNC1(doc);

    FUNC9();
}