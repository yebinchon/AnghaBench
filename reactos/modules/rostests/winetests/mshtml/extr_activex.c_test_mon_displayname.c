
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOLESTR ;
typedef int IMoniker ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int CoTaskMemFree (int ) ;
 scalar_t__ IMoniker_GetDisplayName (int *,int *,int *,int *) ;
 scalar_t__ IMoniker_IsSystemMoniker (int *,scalar_t__*) ;
 scalar_t__ MKSYS_URLMONIKER ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int ) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp_wa (int ,char const*) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_mon_displayname(IMoniker *mon, const char *exname, const char *broken_name)
{
    LPOLESTR display_name;
    DWORD mksys;
    HRESULT hres;

    hres = IMoniker_GetDisplayName(mon, ((void*)0), ((void*)0), &display_name);
    ok(hres == S_OK, "GetDisplayName failed: %08x\n", hres);
    ok(!strcmp_wa(display_name, exname) || broken(broken_name && !strcmp_wa(display_name, broken_name)),
        "display_name = %s\n", wine_dbgstr_w(display_name));
    CoTaskMemFree(display_name);

    hres = IMoniker_IsSystemMoniker(mon, &mksys);
    ok(hres == S_OK, "IsSystemMoniker failed: %08x\n", hres);
    ok(mksys == MKSYS_URLMONIKER, "mksys = %d\n", mksys);
}
