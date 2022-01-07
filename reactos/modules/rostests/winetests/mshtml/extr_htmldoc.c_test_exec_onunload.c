
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int VARIANT ;
typedef int IOleCommandTarget ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleCommandTarget ;
 scalar_t__ IOleCommandTarget_Exec (int *,int *,int ,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 int OLECMDEXECOPT_DODEFAULT ;
 int OLECMDID_ONUNLOAD ;
 scalar_t__ S_OK ;
 scalar_t__ VARIANT_TRUE ;
 scalar_t__ VT_BOOL ;
 scalar_t__ V_BOOL (int *) ;
 scalar_t__ V_VT (int *) ;
 int memset (int *,int,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_exec_onunload(IHTMLDocument2 *doc)
{
    IOleCommandTarget *cmdtrg;
    VARIANT var;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleCommandTarget, (void**)&cmdtrg);
    ok(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    memset(&var, 0x0a, sizeof(var));
    hres = IOleCommandTarget_Exec(cmdtrg, ((void*)0), OLECMDID_ONUNLOAD,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), &var);
    ok(hres == S_OK, "Exec(..., OLECMDID_ONUNLOAD, ...) failed: %08x\n", hres);
    ok(V_VT(&var) == VT_BOOL, "V_VT(var)=%d, expected VT_BOOL\n", V_VT(&var));
    ok(V_BOOL(&var) == VARIANT_TRUE, "V_BOOL(var)=%x, expected VARIANT_TRUE\n", V_BOOL(&var));

    hres = IOleCommandTarget_Exec(cmdtrg, ((void*)0), OLECMDID_ONUNLOAD,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
    ok(hres == S_OK, "Exec(..., OLECMDID_ONUNLOAD, ...) failed: %08x\n", hres);

    IOleCommandTarget_Release(cmdtrg);
}
