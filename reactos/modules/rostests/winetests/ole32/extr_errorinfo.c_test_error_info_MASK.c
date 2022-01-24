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
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IErrorInfo ;
typedef  int /*<<< orphan*/  ICreateErrorInfo ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WineTest ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IErrorInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    HRESULT hr;
    ICreateErrorInfo *pCreateErrorInfo;
    IErrorInfo *pErrorInfo;
    static WCHAR wszDescription[] = {'F','a','i','l','e','d',' ','S','p','r','o','c','k','e','t',0};
    static WCHAR wszHelpFile[] = {'s','p','r','o','c','k','e','t','.','h','l','p',0};
    static WCHAR wszSource[] = {'s','p','r','o','c','k','e','t',0};
    IUnknown *unk;

    hr = FUNC0(&pCreateErrorInfo);
    FUNC14(hr, "CreateErrorInfo");

    hr = FUNC2(pCreateErrorInfo, &IID_IUnknown, (void**)&unk);
    FUNC14(hr, "QI");
    FUNC11(unk);

    hr = FUNC4(pCreateErrorInfo, NULL);
    FUNC14(hr, "ICreateErrorInfo_SetDescription");

    hr = FUNC4(pCreateErrorInfo, wszDescription);
    FUNC14(hr, "ICreateErrorInfo_SetDescription");

    hr = FUNC5(pCreateErrorInfo, &CLSID_WineTest);
    FUNC14(hr, "ICreateErrorInfo_SetGUID");

    hr = FUNC6(pCreateErrorInfo, 0xdeadbeef);
    FUNC14(hr, "ICreateErrorInfo_SetHelpContext");

    hr = FUNC7(pCreateErrorInfo, NULL);
    FUNC14(hr, "ICreateErrorInfo_SetHelpFile");

    hr = FUNC7(pCreateErrorInfo, wszHelpFile);
    FUNC14(hr, "ICreateErrorInfo_SetHelpFile");

    hr = FUNC8(pCreateErrorInfo, NULL);
    FUNC14(hr, "ICreateErrorInfo_SetSource");

    hr = FUNC8(pCreateErrorInfo, wszSource);
    FUNC14(hr, "ICreateErrorInfo_SetSource");

    hr = FUNC2(pCreateErrorInfo, &IID_IErrorInfo, (void **)&pErrorInfo);
    FUNC14(hr, "ICreateErrorInfo_QueryInterface");

    hr = FUNC9(pErrorInfo, &IID_IUnknown, (void**)&unk);
    FUNC14(hr, "QI");
    FUNC11(unk);

    FUNC3(pCreateErrorInfo);

    hr = FUNC12(0, pErrorInfo);
    FUNC14(hr, "SetErrorInfo");

    FUNC10(pErrorInfo);
    pErrorInfo = NULL;

    hr = FUNC1(0, &pErrorInfo);
    FUNC14(hr, "GetErrorInfo");

    FUNC10(pErrorInfo);

    hr = FUNC1(0, &pErrorInfo);
    FUNC13(hr == S_FALSE, "GetErrorInfo should have returned S_FALSE instead of 0x%08x\n", hr);
    FUNC13(!pErrorInfo, "pErrorInfo should be set to NULL\n");

    hr = FUNC12(0, NULL);
    FUNC14(hr, "SetErrorInfo");

    hr = FUNC1(0xdeadbeef, &pErrorInfo);
    FUNC13(hr == E_INVALIDARG, "GetErrorInfo should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC12(0xdeadbeef, NULL);
    FUNC13(hr == E_INVALIDARG, "SetErrorInfo should have returned E_INVALIDARG instead of 0x%08x\n", hr);
}