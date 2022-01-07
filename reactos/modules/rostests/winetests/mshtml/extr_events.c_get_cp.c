
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IConnectionPointContainer_FindConnectionPoint (int *,int ,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 int IID_IConnectionPointContainer ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IConnectionPoint *get_cp(IUnknown *unk, REFIID riid)
{
    IConnectionPointContainer *cp_container;
    IConnectionPoint *cp;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IConnectionPointContainer, (void**)&cp_container);
    ok(hres == S_OK, "Could not get IConnectionPointContainer: %08x\n", hres);

    hres = IConnectionPointContainer_FindConnectionPoint(cp_container, riid, &cp);
    IConnectionPointContainer_Release(cp_container);
    ok(hres == S_OK, "FindConnectionPoint failed: %08x\n", hres);

    return cp;
}
