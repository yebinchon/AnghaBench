
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ IConnectionPointContainer_FindConnectionPoint (int *,int ,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 scalar_t__ IConnectionPoint_Advise (int *,int *,int *) ;
 int IConnectionPoint_Release (int *) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IConnectionPointContainer ;
 scalar_t__ S_OK ;
 int * notif_doc ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void do_advise(IHTMLDocument2 *doc, REFIID riid, IUnknown *unk_advise)
{
    IConnectionPointContainer *container;
    IConnectionPoint *cp;
    DWORD cookie;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IConnectionPointContainer, (void**)&container);
    ok(hres == S_OK, "QueryInterface(IID_IConnectionPointContainer) failed: %08x\n", hres);

    hres = IConnectionPointContainer_FindConnectionPoint(container, riid, &cp);
    IConnectionPointContainer_Release(container);
    ok(hres == S_OK, "FindConnectionPoint failed: %08x\n", hres);

    notif_doc = doc;

    hres = IConnectionPoint_Advise(cp, unk_advise, &cookie);
    IConnectionPoint_Release(cp);
    ok(hres == S_OK, "Advise failed: %08x\n", hres);
}
