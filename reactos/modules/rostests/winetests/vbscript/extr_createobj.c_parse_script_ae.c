
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IActiveScriptParse ;
typedef int HRESULT ;
typedef int BSTR ;


 int IActiveScriptParse_ParseScriptText (int *,int ,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;

__attribute__((used)) static HRESULT parse_script_ae(IActiveScriptParse *parser, const char *script)
{
    BSTR str;
    HRESULT hres;

    str = a2bstr(script);
    hres = IActiveScriptParse_ParseScriptText(parser, str, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0, ((void*)0), ((void*)0));
    SysFreeString(str);

    return hres;
}
