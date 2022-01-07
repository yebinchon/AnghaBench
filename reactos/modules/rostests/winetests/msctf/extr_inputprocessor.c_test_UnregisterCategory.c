
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CLSID_FakeService ;
 int GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER ;
 int GUID_TFCAT_TIP_KEYBOARD ;
 int ITfCategoryMgr_UnregisterCategory (int ,int *,int *,int *) ;
 int SUCCEEDED (int ) ;
 int g_cm ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_UnregisterCategory(void)
{
    HRESULT hr;
    hr = ITfCategoryMgr_UnregisterCategory(g_cm, &CLSID_FakeService, &GUID_TFCAT_TIP_KEYBOARD, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_UnregisterCategory failed\n");
    hr = ITfCategoryMgr_UnregisterCategory(g_cm, &CLSID_FakeService, &GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_UnregisterCategory failed\n");
}
