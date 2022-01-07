
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptProperty ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_JScript ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int IActiveScriptProperty_Release (int *) ;
 int IID_IActiveScriptProperty ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;

__attribute__((used)) static BOOL check_jscript(void)
{
    IActiveScriptProperty *script_prop;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_JScript, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScriptProperty, (void**)&script_prop);
    if(SUCCEEDED(hres))
        IActiveScriptProperty_Release(script_prop);

    return hres == S_OK;
}
