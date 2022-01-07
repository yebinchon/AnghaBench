
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITfInputProcessorProfileMgr ;
typedef int IEnumTfInputProcessorProfiles ;
typedef scalar_t__ HRESULT ;


 int IEnumTfInputProcessorProfiles_Release (int *) ;
 int IID_ITfInputProcessorProfileMgr ;
 scalar_t__ ITfInputProcessorProfileMgr_EnumProfiles (int *,int ,int **) ;
 int ITfInputProcessorProfileMgr_Release (int *) ;
 scalar_t__ ITfInputProcessorProfiles_QueryInterface (int ,int *,void**) ;
 scalar_t__ S_OK ;
 int g_ipp ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_profile_mgr(void)
{
    IEnumTfInputProcessorProfiles *enum_profiles;
    ITfInputProcessorProfileMgr *ipp_mgr;
    HRESULT hres;

    hres = ITfInputProcessorProfiles_QueryInterface(g_ipp, &IID_ITfInputProcessorProfileMgr, (void**)&ipp_mgr);
    if (hres != S_OK)
    {
        win_skip("ITfInputProcessorProfileMgr is not supported.\n");
        return;
    }
    ok(hres == S_OK, "Could not get ITfInputProcessorProfileMgr iface: %08x\n", hres);

    hres = ITfInputProcessorProfileMgr_EnumProfiles(ipp_mgr, 0, &enum_profiles);
    ok(hres == S_OK, "EnumProfiles failed: %08x\n", hres);

    IEnumTfInputProcessorProfiles_Release(enum_profiles);

    ITfInputProcessorProfileMgr_Release(ipp_mgr);
}
