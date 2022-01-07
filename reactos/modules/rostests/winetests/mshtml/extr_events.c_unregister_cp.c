
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int IConnectionPoint ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int IConnectionPoint_Release (int *) ;
 scalar_t__ IConnectionPoint_Unadvise (int *,int ) ;
 scalar_t__ S_OK ;
 int * get_cp (int *,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void unregister_cp(IUnknown *unk, REFIID riid, DWORD cookie)
{
    IConnectionPoint *cp;
    HRESULT hres;

    cp = get_cp(unk, riid);
    hres = IConnectionPoint_Unadvise(cp, cookie);
    IConnectionPoint_Release(cp);
    ok(hres == S_OK, "Unadvise failed: %08x\n", hres);
}
