
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CLSID_FakeService ;
 int GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER ;
 int GUID_TFCAT_TIP_KEYBOARD ;
 int ITfCategoryMgr_RegisterCategory (int ,int *,int *,int *) ;
 int SUCCEEDED (int ) ;
 int g_cm ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_RegisterCategory(void)
{
    HRESULT hr;
    hr = ITfCategoryMgr_RegisterCategory(g_cm, &CLSID_FakeService, &GUID_TFCAT_TIP_KEYBOARD, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_RegisterCategory failed\n");
    hr = ITfCategoryMgr_RegisterCategory(g_cm, &CLSID_FakeService, &GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"ITfCategoryMgr_RegisterCategory failed\n");
}
