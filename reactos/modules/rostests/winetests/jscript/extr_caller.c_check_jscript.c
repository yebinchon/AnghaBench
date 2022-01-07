
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptProperty ;
typedef int IActiveScriptParse ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int ,int ,int ,int *,int *) ;
 scalar_t__ IActiveScriptParse_QueryInterface (int *,int *,void**) ;
 int IActiveScriptParse_Release (int *) ;
 int IActiveScriptProperty_Release (int *) ;
 int IID_IActiveScriptProperty ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char*) ;
 int * create_script () ;

__attribute__((used)) static BOOL check_jscript(void)
{
    IActiveScriptProperty *script_prop;
    IActiveScriptParse *parser;
    BSTR str;
    HRESULT hres;

    parser = create_script();
    if(!parser)
        return FALSE;

    str = a2bstr("if(!('localeCompare' in String.prototype)) throw 1;");
    hres = IActiveScriptParse_ParseScriptText(parser, str, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    SysFreeString(str);

    if(hres == S_OK)
        hres = IActiveScriptParse_QueryInterface(parser, &IID_IActiveScriptProperty, (void**)&script_prop);
    IActiveScriptParse_Release(parser);
    if(hres == S_OK)
        IActiveScriptProperty_Release(script_prop);

    return hres == S_OK;
}
