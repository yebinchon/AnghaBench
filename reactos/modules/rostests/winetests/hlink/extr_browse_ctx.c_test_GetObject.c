
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IHlinkBrowseContext ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ CreateItemMoniker (char*,char*,int **) ;
 int FALSE ;
 scalar_t__ HlinkCreateBrowseContext (int *,int *,void**) ;
 scalar_t__ IHlinkBrowseContext_GetObject (int *,int *,int ,int **) ;
 scalar_t__ IHlinkBrowseContext_Register (int *,int ,int *,int *,int *) ;
 int IHlinkBrowseContext_Release (int *) ;
 scalar_t__ IHlinkBrowseContext_Revoke (int *,int ) ;
 int IID_IHlinkBrowseContext ;
 int IMoniker_Release (int *) ;
 scalar_t__ MK_E_UNAVAILABLE ;
 scalar_t__ S_OK ;
 int Unknown ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetObject(void)
{
    IHlinkBrowseContext *bc;
    IMoniker *dummy;
    IUnknown *unk;
    WCHAR one[] = {'1',0};
    WCHAR five[] = {'5',0};
    DWORD cookie;
    HRESULT hres;

    hres = CreateItemMoniker(one, five, &dummy);
    ok(hres == S_OK, "CreateItemMoniker() failed: 0x%08x\n", hres);

    hres = HlinkCreateBrowseContext(((void*)0), &IID_IHlinkBrowseContext, (void **)&bc);
    ok(hres == S_OK, "HlinkCreateBrowseContext() failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetObject(bc, dummy, FALSE, &unk);
    ok(hres == MK_E_UNAVAILABLE, "expected MK_E_UNAVAILABLE, got 0x%08x\n", hres);

    hres = IHlinkBrowseContext_Register(bc, 0, &Unknown, dummy, &cookie);
    ok(hres == S_OK, "Register() failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetObject(bc, dummy, FALSE, &unk);
    ok(hres == S_OK, "GetObject() failed: 0x%08x\n", hres);
    ok(unk == &Unknown, "wrong object returned\n");

    hres = IHlinkBrowseContext_Revoke(bc, cookie);
    ok(hres == S_OK, "Revoke() failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetObject(bc, dummy, FALSE, &unk);
    ok(hres == MK_E_UNAVAILABLE, "expected MK_E_UNAVAILABLE, got 0x%08x\n", hres);

    IHlinkBrowseContext_Release(bc);
    IMoniker_Release(dummy);
}
