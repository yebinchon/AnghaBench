
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int script; } ;
typedef TYPE_1__ ScriptHost ;
typedef int IActiveScriptProperty ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int IActiveScriptProperty_Release (int *) ;
 int IActiveScriptProperty_SetProperty (int *,int ,int *,int *) ;
 int IActiveScript_QueryInterface (int ,int *,void**) ;
 int IID_IActiveScriptProperty ;
 int WARN (char*,int ,...) ;

__attribute__((used)) static void set_script_prop(ScriptHost *script_host, DWORD property, VARIANT *val)
{
    IActiveScriptProperty *script_prop;
    HRESULT hres;

    hres = IActiveScript_QueryInterface(script_host->script, &IID_IActiveScriptProperty,
            (void**)&script_prop);
    if(FAILED(hres)) {
        WARN("Could not get IActiveScriptProperty iface: %08x\n", hres);
        return;
    }

    hres = IActiveScriptProperty_SetProperty(script_prop, property, ((void*)0), val);
    IActiveScriptProperty_Release(script_prop);
    if(FAILED(hres))
        WARN("SetProperty(%x) failed: %08x\n", property, hres);
}
