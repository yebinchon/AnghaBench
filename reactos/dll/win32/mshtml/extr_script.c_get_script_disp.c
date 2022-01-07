
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int script; } ;
typedef TYPE_1__ ScriptHost ;
typedef int IDispatch ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IActiveScript_GetScriptDispatch (int ,int ,int **) ;
 int windowW ;

IDispatch *get_script_disp(ScriptHost *script_host)
{
    IDispatch *disp;
    HRESULT hres;

    if(!script_host->script)
        return ((void*)0);

    hres = IActiveScript_GetScriptDispatch(script_host->script, windowW, &disp);
    if(FAILED(hres))
        return ((void*)0);

    return disp;
}
