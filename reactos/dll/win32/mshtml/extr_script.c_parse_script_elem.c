
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
struct TYPE_6__ {int parsed; int nsscript; } ;
typedef int ScriptHost ;
typedef scalar_t__ PRUnichar ;
typedef TYPE_1__ HTMLScriptElement ;


 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int READYSTATE_COMPLETE ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (scalar_t__ const*) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,scalar_t__ const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLScriptElement_GetEvent (int ,int *) ;
 int nsIDOMHTMLScriptElement_GetSrc (int ,int *) ;
 int parse_extern_script (int *,TYPE_1__*,scalar_t__ const*) ;
 int parse_inline_script (int *,TYPE_1__*) ;
 int set_script_elem_readystate (TYPE_1__*,int ) ;

__attribute__((used)) static void parse_script_elem(ScriptHost *script_host, HTMLScriptElement *script_elem)
{
    nsAString src_str, event_str;
    const PRUnichar *src;
    nsresult nsres;

    nsAString_Init(&event_str, ((void*)0));
    nsres = nsIDOMHTMLScriptElement_GetEvent(script_elem->nsscript, &event_str);
    if(NS_SUCCEEDED(nsres)) {
        const PRUnichar *event;

        nsAString_GetData(&event_str, &event);
        if(*event) {
            TRACE("deferring event %s script evaluation\n", debugstr_w(event));
            nsAString_Finish(&event_str);
            return;
        }
    }else {
        ERR("GetEvent failed: %08x\n", nsres);
    }
    nsAString_Finish(&event_str);

    nsAString_Init(&src_str, ((void*)0));
    nsres = nsIDOMHTMLScriptElement_GetSrc(script_elem->nsscript, &src_str);
    nsAString_GetData(&src_str, &src);

    if(NS_FAILED(nsres)) {
        ERR("GetSrc failed: %08x\n", nsres);
    }else if(*src) {
        script_elem->parsed = TRUE;
        parse_extern_script(script_host, script_elem, src);
    }else {
        parse_inline_script(script_host, script_elem);
    }

    nsAString_Finish(&src_str);

    set_script_elem_readystate(script_elem, READYSTATE_COMPLETE);
}
