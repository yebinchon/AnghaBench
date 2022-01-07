
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IUnknown ;
typedef int IOleCommandTarget ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int DWORD ;


 int IID_IOleCommandTarget ;
 scalar_t__ IOleCommandTarget_Exec (int *,int const*,int ,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_exec(IUnknown *unk, const GUID *grpid, DWORD cmdid, VARIANT *in, VARIANT *out)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    ok(hres == S_OK, "Could not get IOleCommandTarget interface: %08x\n", hres);

    hres = IOleCommandTarget_Exec(cmdtrg, grpid, cmdid, 0, in, out);
    ok(hres == S_OK, "Exec failed: %08x\n", hres);

    IOleCommandTarget_Release(cmdtrg);
}
