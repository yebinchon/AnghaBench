
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int GUID ;


 int CLSID_FakeService ;
 int const GUID_NULL ;
 int const GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER ;
 int const GUID_TFCAT_TIP_HANDWRITING ;
 int const GUID_TFCAT_TIP_KEYBOARD ;
 int const GUID_TFCAT_TIP_SPEECH ;
 int ITfCategoryMgr_FindClosestCategory (int ,int *,int *,int const**,int) ;
 int IsEqualGUID (int *,int const*) ;
 int SUCCEEDED (int ) ;
 int g_cm ;
 int ok (int ,char*,...) ;

__attribute__((used)) static void test_FindClosestCategory(void)
{
    GUID output;
    HRESULT hr;
    const GUID *list[3] = {&GUID_TFCAT_TIP_SPEECH, &GUID_TFCAT_TIP_KEYBOARD, &GUID_TFCAT_TIP_HANDWRITING};

    hr = ITfCategoryMgr_FindClosestCategory(g_cm, &CLSID_FakeService, &output, ((void*)0), 0);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    ok(IsEqualGUID(&output,&GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER),"Wrong GUID\n");

    hr = ITfCategoryMgr_FindClosestCategory(g_cm, &CLSID_FakeService, &output, list, 1);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    ok(IsEqualGUID(&output,&GUID_NULL),"Wrong GUID\n");

    hr = ITfCategoryMgr_FindClosestCategory(g_cm, &CLSID_FakeService, &output, list, 3);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    ok(IsEqualGUID(&output,&GUID_TFCAT_TIP_KEYBOARD),"Wrong GUID\n");
}
