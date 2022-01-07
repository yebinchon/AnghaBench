
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int excepinfo ;
typedef int VARIANT ;
struct TYPE_3__ {int parse; } ;
typedef TYPE_1__ ScriptHost ;
typedef int LPCWSTR ;
typedef int HTMLScriptElement ;
typedef int HRESULT ;
typedef int EXCEPINFO ;


 int IActiveScriptParse_ParseScriptText (int ,int ,int ,int *,int ,int ,int ,int,int *,int *) ;
 int READYSTATE_INTERACTIVE ;
 int SCRIPTTEXT_HOSTMANAGESSOURCE ;
 int SCRIPTTEXT_ISVISIBLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,...) ;
 int VariantInit (int *) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 int memset (int *,int ,int) ;
 int script_endW ;
 int set_script_elem_readystate (int *,int ) ;
 int windowW ;

__attribute__((used)) static void parse_elem_text(ScriptHost *script_host, HTMLScriptElement *script_elem, LPCWSTR text)
{
    EXCEPINFO excepinfo;
    VARIANT var;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(text));

    set_script_elem_readystate(script_elem, READYSTATE_INTERACTIVE);

    VariantInit(&var);
    memset(&excepinfo, 0, sizeof(excepinfo));
    TRACE(">>>\n");
    hres = IActiveScriptParse_ParseScriptText(script_host->parse, text, windowW, ((void*)0), script_endW,
                                              0, 0, SCRIPTTEXT_ISVISIBLE|SCRIPTTEXT_HOSTMANAGESSOURCE,
                                              &var, &excepinfo);
    if(SUCCEEDED(hres))
        TRACE("<<<\n");
    else
        WARN("<<< %08x\n", hres);

}
