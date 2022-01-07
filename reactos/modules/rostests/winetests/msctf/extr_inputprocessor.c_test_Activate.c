
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CLSID_FakeService ;
 int FALSE ;
 int ITfInputProcessorProfiles_ActivateLanguageProfile (int ,int *,int ,int *) ;
 int SUCCEEDED (int ) ;
 int TRUE ;
 int gLangid ;
 int g_ipp ;
 int ok (int ,char*) ;
 int test_ShouldActivate ;

__attribute__((used)) static void test_Activate(void)
{
    HRESULT hr;

    test_ShouldActivate = TRUE;
    hr = ITfInputProcessorProfiles_ActivateLanguageProfile(g_ipp,&CLSID_FakeService,gLangid,&CLSID_FakeService);
    ok(SUCCEEDED(hr),"Failed to Activate text service\n");
    test_ShouldActivate = FALSE;
}
