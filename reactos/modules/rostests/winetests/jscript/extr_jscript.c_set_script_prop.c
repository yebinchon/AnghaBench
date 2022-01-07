
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IActiveScriptProperty ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (scalar_t__) ;
 int IActiveScriptProperty_Release (int *) ;
 scalar_t__ IActiveScriptProperty_SetProperty (int *,int ,int *,int *) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IID_IActiveScriptProperty ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static HRESULT set_script_prop(IActiveScript *engine, DWORD property, VARIANT *val)
{
    IActiveScriptProperty *script_prop;
    HRESULT hres;

    hres = IActiveScript_QueryInterface(engine, &IID_IActiveScriptProperty,
            (void**)&script_prop);
    ok(hres == S_OK, "Could not get IActiveScriptProperty: %08x\n", hres);
    if(FAILED(hres))
        return hres;

    hres = IActiveScriptProperty_SetProperty(script_prop, property, ((void*)0), val);
    IActiveScriptProperty_Release(script_prop);
    return hres;
}
