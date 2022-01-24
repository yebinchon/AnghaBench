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
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  IID_IXMLDOMNode ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int FUNC22 (char*) ; 
 char* szBasicTransformOutput ; 
 char* szBasicTransformSSXMLPart1 ; 
 char* szBasicTransformSSXMLPart2 ; 
 char* szBasicTransformXML ; 
 char* szTypeValueXML ; 

__attribute__((used)) static void FUNC23(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMDocument *xsl;
    IXMLDOMNode *pNode;
    VARIANT_BOOL bSucc;
    HRESULT hr;
    HANDLE file;
    DWORD dwWritten;
    char lpPathBuffer[MAX_PATH];
    int i;

    /* Create a Temp File. */
    FUNC4(MAX_PATH, lpPathBuffer);
    FUNC21(lpPathBuffer, "customers.xml" );

    file = FUNC1(lpPathBuffer, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL );
    FUNC20(file != INVALID_HANDLE_VALUE, "Could not create file: %u\n", FUNC3());
    if(file == INVALID_HANDLE_VALUE)
        return;

    FUNC12(file, szBasicTransformXML, FUNC22(szBasicTransformXML), &dwWritten, NULL);
    FUNC0(file);

    /* Correct path to not include an escape character. */
    for(i=0; i < FUNC22(lpPathBuffer); i++)
    {
        if(lpPathBuffer[i] == '\\')
            lpPathBuffer[i] = '/';
    }

    doc = FUNC15(&IID_IXMLDOMDocument);
    xsl = FUNC15(&IID_IXMLDOMDocument);

    hr = FUNC7(doc, FUNC13(szTypeValueXML), &bSucc);
    FUNC20(hr == S_OK, "ret %08x\n", hr );
    FUNC20(bSucc == VARIANT_TRUE, "Expected VARIANT_TRUE got VARIANT_FALSE\n");
    if(bSucc == VARIANT_TRUE)
    {
        BSTR sXSL;
        BSTR sPart1 = FUNC13(szBasicTransformSSXMLPart1);
        BSTR sPart2 = FUNC13(szBasicTransformSSXMLPart2);
        BSTR sFileName = FUNC13(lpPathBuffer);
        int nLength = FUNC19(sPart1) + FUNC19(sPart2) + FUNC19(sFileName) + 1;

        sXSL = FUNC10(NULL, nLength);
        FUNC18(sXSL, sPart1);
        FUNC17(sXSL, sFileName);
        FUNC17(sXSL, sPart2);

        hr = FUNC7(xsl, sXSL, &bSucc);
        FUNC20(hr == S_OK, "ret %08x\n", hr );
        FUNC20(bSucc == VARIANT_TRUE, "Expected VARIANT_TRUE got VARIANT_FALSE\n");
        if(bSucc == VARIANT_TRUE)
        {
            BSTR sResult;

            hr = FUNC5(xsl, &IID_IXMLDOMNode, (void**)&pNode );
            FUNC20(hr == S_OK, "ret %08x\n", hr );
            if(hr == S_OK)
            {
                /* This will load the temp file via the XSL */
                hr = FUNC8(doc, pNode, &sResult);
                FUNC20(hr == S_OK, "ret %08x\n", hr );
                if(hr == S_OK)
                {
                    FUNC20( FUNC14( sResult, FUNC13(szBasicTransformOutput)), "Stylesheet output not correct\n");
                    FUNC11(sResult);
                }

                FUNC9(pNode);
            }
        }

        FUNC11(sXSL);
    }

    FUNC6(doc);
    FUNC6(xsl);

    FUNC2(lpPathBuffer);
    FUNC16();
}