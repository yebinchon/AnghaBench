
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int CLSID_FakeService ;
 scalar_t__ FALSE ;
 int ITfInputProcessorProfiles_EnableLanguageProfile (int ,int *,int ,int *,scalar_t__) ;
 int ITfInputProcessorProfiles_IsEnabledLanguageProfile (int ,int *,int ,int *,scalar_t__*) ;
 int SUCCEEDED (int ) ;
 scalar_t__ TRUE ;
 int gLangid ;
 int g_ipp ;
 int ok (int,char*) ;

__attribute__((used)) static void test_Enable(void)
{
    HRESULT hr;
    BOOL enabled = FALSE;

    hr = ITfInputProcessorProfiles_EnableLanguageProfile(g_ipp,&CLSID_FakeService, gLangid, &CLSID_FakeService, TRUE);
    ok(SUCCEEDED(hr),"Failed to enable text service\n");
    hr = ITfInputProcessorProfiles_IsEnabledLanguageProfile(g_ipp,&CLSID_FakeService, gLangid, &CLSID_FakeService, &enabled);
    ok(SUCCEEDED(hr),"Failed to get enabled state\n");
    ok(enabled == TRUE,"enabled state incorrect\n");
}
