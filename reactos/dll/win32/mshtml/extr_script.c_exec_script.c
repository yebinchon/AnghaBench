
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ei ;
typedef char WCHAR ;
typedef int VARIANT ;
struct TYPE_3__ {int parse; } ;
typedef TYPE_1__ ScriptHost ;
typedef int HTMLInnerWindow ;
typedef int HRESULT ;
typedef int GUID ;
typedef int EXCEPINFO ;


 int CO_E_CLASSSTRING ;
 int E_FAIL ;
 int FIXME (char*) ;
 int IActiveScriptParse_ParseScriptText (int ,char const*,int *,int *,char const*,int ,int ,int ,int *,int *) ;
 int SCRIPTTEXT_ISVISIBLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int WARN (char*,...) ;
 int get_guid_from_language (char const*,int *) ;
 TYPE_1__* get_script_host (int *,int *) ;
 int memset (int *,int ,int) ;

HRESULT exec_script(HTMLInnerWindow *window, const WCHAR *code, const WCHAR *lang, VARIANT *ret)
{
    ScriptHost *script_host;
    EXCEPINFO ei;
    GUID guid;
    HRESULT hres;

    static const WCHAR delimW[] = {'"',0};

    if(!get_guid_from_language(lang, &guid)) {
        WARN("Could not find script GUID\n");
        return CO_E_CLASSSTRING;
    }

    script_host = get_script_host(window, &guid);
    if(!script_host) {
        FIXME("No script host\n");
        return E_FAIL;
    }

    if(!script_host->parse) {
        FIXME("script_host->parse == NULL\n");
        return E_FAIL;
    }

    memset(&ei, 0, sizeof(ei));
    TRACE(">>>\n");
    hres = IActiveScriptParse_ParseScriptText(script_host->parse, code, ((void*)0), ((void*)0), delimW, 0, 0, SCRIPTTEXT_ISVISIBLE, ret, &ei);
    if(SUCCEEDED(hres))
        TRACE("<<<\n");
    else
        WARN("<<< %08x\n", hres);

    return hres;
}
