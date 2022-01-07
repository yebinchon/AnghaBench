
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef int WCHAR ;
struct TYPE_10__ {int window; } ;
struct TYPE_9__ {int nsscript; scalar_t__ parsed; } ;
struct TYPE_8__ {int parse_proc; } ;
typedef TYPE_1__ ScriptHost ;
typedef int PRUnichar ;
typedef int IDispatch ;
typedef TYPE_2__ HTMLScriptElement ;
typedef TYPE_3__ HTMLDocumentNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int IActiveScriptParseProcedure2_ParseProcedureText (int ,int const*,int const*,int ,int *,int *,int ,int ,int ,int,int **) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int SCRIPTPROC_HOSTMANAGESSOURCE ;
 int SCRIPTPROC_IMPLICIT_PARENTS ;
 int SCRIPTPROC_IMPLICIT_THIS ;
 int WARN (char*,int ) ;
 int debugstr_w (int *) ;
 int emptyW ;
 TYPE_1__* get_elem_script_host (int ,TYPE_2__*) ;
 int heap_free (int *) ;
 int * heap_strdupW (int const*) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLScriptElement_GetEvent (int ,int *) ;
 int nsIDOMHTMLScriptElement_GetText (int ,int *) ;
 int parse_event_str (int *,int const**) ;
 int script_endW ;

__attribute__((used)) static IDispatch *parse_event_elem(HTMLDocumentNode *doc, HTMLScriptElement *script_elem, WCHAR **ret_event)
{
    ScriptHost *script_host;
    WCHAR *event = ((void*)0);
    const WCHAR *args;
    nsAString nsstr;
    IDispatch *disp;
    nsresult nsres;
    HRESULT hres;

    if(script_elem->parsed)
        return ((void*)0);

    script_host = get_elem_script_host(doc->window, script_elem);
    if(!script_host || !script_host->parse_proc)
        return ((void*)0);

    nsAString_Init(&nsstr, ((void*)0));
    nsres = nsIDOMHTMLScriptElement_GetEvent(script_elem->nsscript, &nsstr);
    if(NS_SUCCEEDED(nsres)) {
        const PRUnichar *event_val;

        nsAString_GetData(&nsstr, &event_val);
        event = heap_strdupW(event_val);
    }
    nsAString_Finish(&nsstr);
    if(!event)
        return ((void*)0);

    if(!parse_event_str(event, &args)) {
        WARN("parsing %s failed\n", debugstr_w(event));
        heap_free(event);
        return ((void*)0);
    }

    nsAString_Init(&nsstr, ((void*)0));
    nsres = nsIDOMHTMLScriptElement_GetText(script_elem->nsscript, &nsstr);
    if(NS_SUCCEEDED(nsres)) {
        const PRUnichar *text;

        nsAString_GetData(&nsstr, &text);
        hres = IActiveScriptParseProcedure2_ParseProcedureText(script_host->parse_proc, text, args,
                emptyW, ((void*)0), ((void*)0), script_endW, 0, 0,
                SCRIPTPROC_HOSTMANAGESSOURCE|SCRIPTPROC_IMPLICIT_THIS|SCRIPTPROC_IMPLICIT_PARENTS, &disp);
        if(FAILED(hres))
            disp = ((void*)0);
    }else {
        ERR("GetText failed: %08x\n", nsres);
        disp = ((void*)0);
    }
    nsAString_Finish(&nsstr);
    if(!disp) {
        heap_free(event);
        return ((void*)0);
    }

    *ret_event = event;
    return disp;
}
