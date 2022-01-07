
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDispatch ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_UNEXPECTED ;
 scalar_t__ IActiveScript_GetScriptDispatch (int *,int *,int **) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_no_script_dispatch(IActiveScript *script)
{
    IDispatch *disp;
    HRESULT hres;

    disp = (void*)0xdeadbeef;
    hres = IActiveScript_GetScriptDispatch(script, ((void*)0), &disp);
    ok(hres == E_UNEXPECTED, "hres = %08x, expected E_UNEXPECTED\n", hres);
    ok(!disp, "disp != NULL\n");
}
