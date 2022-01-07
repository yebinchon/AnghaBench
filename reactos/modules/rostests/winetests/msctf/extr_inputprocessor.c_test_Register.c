
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int HRESULT ;


 int ARRAY_SIZE (float const*) ;
 int CLSID_FakeService ;
 int ITfInputProcessorProfiles_AddLanguageProfile (int ,int *,int ,int *,float const*,int ,float const*,int ,int) ;
 int ITfInputProcessorProfiles_GetCurrentLanguage (int ,int *) ;
 int ITfInputProcessorProfiles_Register (int ,int *) ;
 int RegisterTextService (int *) ;
 int SUCCEEDED (int ) ;
 int gLangid ;
 int g_ipp ;
 int ok (int ,char*,...) ;
 int trace (char*,int ) ;

__attribute__((used)) static void test_Register(void)
{
    HRESULT hr;

    static const WCHAR szDesc[] = {'F','a','k','e',' ','W','i','n','e',' ','S','e','r','v','i','c','e',0};
    static const WCHAR szFile[] = {'F','a','k','e',' ','W','i','n','e',' ','S','e','r','v','i','c','e',' ','F','i','l','e',0};

    hr = ITfInputProcessorProfiles_GetCurrentLanguage(g_ipp,&gLangid);
    ok(SUCCEEDED(hr),"Unable to get current language id\n");
    trace("Current Language %x\n",gLangid);

    hr = RegisterTextService(&CLSID_FakeService);
    ok(SUCCEEDED(hr),"Unable to register COM for TextService\n");
    hr = ITfInputProcessorProfiles_Register(g_ipp, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"Unable to register text service(%x)\n",hr);
    hr = ITfInputProcessorProfiles_AddLanguageProfile(g_ipp, &CLSID_FakeService, gLangid,
            &CLSID_FakeService, szDesc, ARRAY_SIZE(szDesc), szFile, ARRAY_SIZE(szFile), 1);
    ok(SUCCEEDED(hr),"Unable to add Language Profile (%x)\n",hr);
}
