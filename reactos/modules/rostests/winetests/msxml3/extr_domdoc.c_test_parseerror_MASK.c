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
typedef  int /*<<< orphan*/  IXMLDOMParseError2 ;
typedef  int /*<<< orphan*/  IXMLDOMParseError ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_DOMDocument60 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  IID_IXMLDOMParseError2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    IXMLDOMParseError2 *error2;
    IXMLDOMParseError *error;
    IXMLDOMDocument *doc;
    HRESULT hr;

    doc = FUNC9(&IID_IXMLDOMDocument);

    hr = FUNC2(doc, &error);
    FUNC0(hr, S_OK);

    hr = FUNC6(error, NULL);
    FUNC0(hr, E_INVALIDARG);

    hr = FUNC8(error, NULL);
    FUNC0(hr, E_INVALIDARG);

    hr = FUNC7(error, NULL);
    FUNC0(hr, E_INVALIDARG);

    FUNC5(error);
    FUNC1(doc);

    if (!FUNC11(&CLSID_DOMDocument60, &IID_IXMLDOMDocument)) return;
    doc = FUNC10(60, &IID_IXMLDOMDocument);

    hr = FUNC2(doc, &error);
    FUNC0(hr, S_OK);
    hr = FUNC4(error, &IID_IXMLDOMParseError2, (void**)&error2);
    FUNC0(hr, S_OK);
    FUNC3(error2);
    FUNC5(error);
    FUNC1(doc);
}