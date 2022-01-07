
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
struct TYPE_4__ {int nsscript; } ;
typedef int ScriptHost ;
typedef scalar_t__ PRUnichar ;
typedef TYPE_1__ HTMLScriptElement ;


 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,scalar_t__ const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLScriptElement_GetText (int ,int *) ;
 int parse_elem_text (int *,TYPE_1__*,scalar_t__ const*) ;

__attribute__((used)) static void parse_inline_script(ScriptHost *script_host, HTMLScriptElement *script_elem)
{
    const PRUnichar *text;
    nsAString text_str;
    nsresult nsres;

    nsAString_Init(&text_str, ((void*)0));
    nsres = nsIDOMHTMLScriptElement_GetText(script_elem->nsscript, &text_str);
    nsAString_GetData(&text_str, &text);

    if(NS_FAILED(nsres)) {
        ERR("GetText failed: %08x\n", nsres);
    }else if(*text) {
        parse_elem_text(script_host, script_elem, text);
    }

    nsAString_Finish(&text_str);
}
