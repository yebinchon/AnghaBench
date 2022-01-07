
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IActiveScript_GetScriptDispatch (int *,int *,int **) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IID_IDispatchEx ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IDispatchEx *get_script_dispatch(IActiveScript *script)
{
    IDispatchEx *dispex;
    IDispatch *disp;
    HRESULT hres;

    disp = (void*)0xdeadbeef;
    hres = IActiveScript_GetScriptDispatch(script, ((void*)0), &disp);
    ok(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    IDispatch_Release(disp);
    ok(hres == S_OK, "Could not get IDispatch iface: %08x\n", hres);
    return dispex;
}
