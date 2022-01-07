
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IOleCommandTarget ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int CGID_MSHTML ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IOleCommandTarget ;
 scalar_t__ IOleCommandTarget_Exec (int *,int *,int ,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int OLECMDEXECOPT_DODEFAULT ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_exec_noargs(IUnknown *unk, DWORD cmdid)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    ok(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IOleCommandTarget_Exec(cmdtrg, &CGID_MSHTML, cmdid,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
    ok(hres == S_OK, "Exec failed: %08x\n", hres);

    IOleCommandTarget_Release(cmdtrg);
}
