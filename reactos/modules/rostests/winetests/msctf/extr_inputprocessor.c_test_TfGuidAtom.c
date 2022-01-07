
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TfGuidAtom ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef scalar_t__ BOOL ;


 int CLSID_FakeService ;
 int CoCreateGuid (int *) ;
 scalar_t__ E_INVALIDARG ;
 int GUID_NULL ;
 scalar_t__ ITfCategoryMgr_GetGUID (int ,scalar_t__,int *) ;
 scalar_t__ ITfCategoryMgr_IsEqualTfGuidAtom (int ,scalar_t__,int *,scalar_t__*) ;
 scalar_t__ ITfCategoryMgr_RegisterGUID (int ,int *,scalar_t__*) ;
 int IsEqualGUID (int *,int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ cid ;
 int g_cm ;
 int ok (int,char*) ;
 scalar_t__ tid ;

__attribute__((used)) static void test_TfGuidAtom(void)
{
    GUID gtest,g1;
    HRESULT hr;
    TfGuidAtom atom1,atom2;
    BOOL equal;

    CoCreateGuid(&gtest);






    hr = ITfCategoryMgr_RegisterGUID(g_cm,&gtest,&atom1);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_RegisterGUID failed\n");
    hr = ITfCategoryMgr_RegisterGUID(g_cm,&gtest,&atom2);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_RegisterGUID failed\n");
    ok(atom1 == atom2,"atoms do not match\n");
    hr = ITfCategoryMgr_GetGUID(g_cm,atom2,((void*)0));
    ok(hr==E_INVALIDARG,"ITfCategoryMgr_GetGUID should have failed\n");
    hr = ITfCategoryMgr_GetGUID(g_cm,atom2,&g1);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_GetGUID failed\n");
    ok(IsEqualGUID(&g1,&gtest),"guids do not match\n");
    hr = ITfCategoryMgr_IsEqualTfGuidAtom(g_cm,atom1,&gtest,((void*)0));
    ok(hr==E_INVALIDARG,"ITfCategoryMgr_IsEqualTfGuidAtom should have failed\n");
    hr = ITfCategoryMgr_IsEqualTfGuidAtom(g_cm,atom1,&gtest,&equal);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_IsEqualTfGuidAtom failed\n");
    ok(equal == TRUE,"Equal value invalid\n");


    hr = ITfCategoryMgr_IsEqualTfGuidAtom(g_cm,tid,&CLSID_FakeService,&equal);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_IsEqualTfGuidAtom failed\n");
    ok(equal == TRUE,"Equal value invalid\n");
    hr = ITfCategoryMgr_GetGUID(g_cm,cid,&g1);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_GetGUID failed\n");
    ok(!IsEqualGUID(&g1,&GUID_NULL),"guid should not be NULL\n");
}
