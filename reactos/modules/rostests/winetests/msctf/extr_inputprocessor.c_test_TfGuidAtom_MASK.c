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
typedef  scalar_t__ TfGuidAtom ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 scalar_t__ cid ; 
 int /*<<< orphan*/  g_cm ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ tid ; 

__attribute__((used)) static void FUNC7(void)
{
    GUID gtest,g1;
    HRESULT hr;
    TfGuidAtom atom1,atom2;
    BOOL equal;

    FUNC0(&gtest);

    /* msdn reports this should return E_INVALIDARG.  However my test show it crashing (winxp)*/
    /*
    hr = ITfCategoryMgr_RegisterGUID(g_cm,&gtest,NULL);
    ok(hr==E_INVALIDARG,"ITfCategoryMgr_RegisterGUID should have failed\n");
    */
    hr = FUNC3(g_cm,&gtest,&atom1);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_RegisterGUID failed\n");
    hr = FUNC3(g_cm,&gtest,&atom2);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_RegisterGUID failed\n");
    FUNC6(atom1 == atom2,"atoms do not match\n");
    hr = FUNC1(g_cm,atom2,NULL);
    FUNC6(hr==E_INVALIDARG,"ITfCategoryMgr_GetGUID should have failed\n");
    hr = FUNC1(g_cm,atom2,&g1);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_GetGUID failed\n");
    FUNC6(FUNC4(&g1,&gtest),"guids do not match\n");
    hr = FUNC2(g_cm,atom1,&gtest,NULL);
    FUNC6(hr==E_INVALIDARG,"ITfCategoryMgr_IsEqualTfGuidAtom should have failed\n");
    hr = FUNC2(g_cm,atom1,&gtest,&equal);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_IsEqualTfGuidAtom failed\n");
    FUNC6(equal == TRUE,"Equal value invalid\n");

    /* show that cid and tid TfClientIds are also TfGuidAtoms */
    hr = FUNC2(g_cm,tid,&CLSID_FakeService,&equal);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_IsEqualTfGuidAtom failed\n");
    FUNC6(equal == TRUE,"Equal value invalid\n");
    hr = FUNC1(g_cm,cid,&g1);
    FUNC6(FUNC5(hr),"ITfCategoryMgr_GetGUID failed\n");
    FUNC6(!FUNC4(&g1,&GUID_NULL),"guid should not be NULL\n");
}