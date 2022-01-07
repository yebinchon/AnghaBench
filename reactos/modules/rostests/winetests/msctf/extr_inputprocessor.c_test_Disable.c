
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CLSID_FakeService ;
 int FALSE ;
 int ITfInputProcessorProfiles_EnableLanguageProfile (int ,int *,int ,int *,int ) ;
 int SUCCEEDED (int ) ;
 int gLangid ;
 int g_ipp ;
 int ok (int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_Disable(void)
{
    HRESULT hr;

    trace("Disabling\n");
    hr = ITfInputProcessorProfiles_EnableLanguageProfile(g_ipp,&CLSID_FakeService, gLangid, &CLSID_FakeService, FALSE);
    ok(SUCCEEDED(hr),"Failed to disable text service\n");
}
