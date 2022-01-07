
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptProperty ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;
typedef int BOOL ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_JScript ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IActiveScriptProperty_Release (int *) ;
 int IID_IActiveScriptProperty ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char*) ;
 scalar_t__ parse_script (int ,int ) ;

__attribute__((used)) static BOOL check_jscript(void)
{
    IActiveScriptProperty *script_prop;
    BSTR str;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_JScript, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScriptProperty, (void**)&script_prop);
    if(FAILED(hres))
        return FALSE;
    IActiveScriptProperty_Release(script_prop);

    str = a2bstr("if(!('localeCompare' in String.prototype)) throw 1;");
    hres = parse_script(0, str);
    SysFreeString(str);

    return hres == S_OK;
}
