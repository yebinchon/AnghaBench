
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ langid; int guidProfile; int catid; int clsid; } ;
typedef TYPE_1__ TF_LANGUAGEPROFILE ;
typedef int IEnumTfLanguageProfiles ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSID_FakeService ;
 scalar_t__ E_INVALIDARG ;
 int FALSE ;
 int GUID_NULL ;
 int GUID_TFCAT_TIP_KEYBOARD ;
 scalar_t__ IEnumTfLanguageProfiles_Next (int *,int,TYPE_1__*,int *) ;
 int IEnumTfLanguageProfiles_Release (int *) ;
 scalar_t__ ITfInputProcessorProfiles_EnumLanguageProfiles (int ,scalar_t__,int **) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 scalar_t__ gLangid ;
 int g_ipp ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_EnumLanguageProfiles(void)
{
    BOOL found = FALSE;
    IEnumTfLanguageProfiles *ppEnum;
    HRESULT hr;

    hr = ITfInputProcessorProfiles_EnumLanguageProfiles(g_ipp, gLangid, ((void*)0));
    ok(hr == E_INVALIDARG, "EnumLanguageProfiles failed: %x\n", hr);

    if (SUCCEEDED(ITfInputProcessorProfiles_EnumLanguageProfiles(g_ipp,gLangid,&ppEnum)))
    {
        TF_LANGUAGEPROFILE profile;
        while (IEnumTfLanguageProfiles_Next(ppEnum,1,&profile,((void*)0))==S_OK)
        {
            if (IsEqualGUID(&profile.clsid,&CLSID_FakeService))
            {
                found = TRUE;
                ok(profile.langid == gLangid, "LangId Incorrect\n");
                ok(IsEqualGUID(&profile.catid,&GUID_TFCAT_TIP_KEYBOARD) ||
                   broken(IsEqualGUID(&profile.catid,&GUID_NULL) ), "CatId Incorrect\n");
                ok(IsEqualGUID(&profile.guidProfile,&CLSID_FakeService), "guidProfile Incorrect\n");
            }
        }
        IEnumTfLanguageProfiles_Release(ppEnum);
    }
    ok(found,"Registered text service not found\n");
}
