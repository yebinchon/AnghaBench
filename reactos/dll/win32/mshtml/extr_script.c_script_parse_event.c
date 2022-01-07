
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_10__ {TYPE_1__* outer_window; } ;
struct TYPE_12__ {TYPE_2__ base; } ;
struct TYPE_11__ {int parse_proc; } ;
struct TYPE_9__ {scalar_t__ scriptmode; } ;
typedef TYPE_3__ ScriptHost ;
typedef scalar_t__* LPWSTR ;
typedef char const* LPCWSTR ;
typedef int IDispatch ;
typedef TYPE_4__ HTMLInnerWindow ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 int CLSID_JScript ;
 scalar_t__ FAILED (int ) ;
 int IActiveScriptParseProcedure2_ParseProcedureText (int ,char const*,int *,int ,int *,int *,char const*,int ,int ,int,int **) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ SCRIPTMODE_ACTIVESCRIPT ;
 int SCRIPTPROC_HOSTMANAGESSOURCE ;
 int SCRIPTPROC_IMPLICIT_PARENTS ;
 int SCRIPTPROC_IMPLICIT_THIS ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 int * debugstr_w (char const*) ;
 int emptyW ;
 int get_default_script_guid (TYPE_4__*) ;
 int get_guid_from_language (scalar_t__*,int *) ;
 TYPE_3__* get_script_host (TYPE_4__*,int *) ;
 scalar_t__* heap_alloc (int) ;
 int heap_free (scalar_t__*) ;
 scalar_t__ isalnumW (char const) ;
 int memcpy (scalar_t__*,char const*,int) ;

IDispatch *script_parse_event(HTMLInnerWindow *window, LPCWSTR text)
{
    ScriptHost *script_host;
    GUID guid;
    const WCHAR *ptr;
    IDispatch *disp;
    HRESULT hres;

    static const WCHAR delimiterW[] = {'\"',0};

    TRACE("%s\n", debugstr_w(text));

    for(ptr = text; isalnumW(*ptr); ptr++);
    if(*ptr == ':') {
        LPWSTR language;
        BOOL b;

        language = heap_alloc((ptr-text+1)*sizeof(WCHAR));
        if(!language)
            return ((void*)0);

        memcpy(language, text, (ptr-text)*sizeof(WCHAR));
        language[ptr-text] = 0;

        b = get_guid_from_language(language, &guid);

        heap_free(language);

        if(!b) {
            WARN("Could not find language\n");
            return ((void*)0);
        }

        ptr++;
    }else {
        ptr = text;
        guid = get_default_script_guid(window);
    }

    if(IsEqualGUID(&CLSID_JScript, &guid)
       && (!window->base.outer_window || window->base.outer_window->scriptmode != SCRIPTMODE_ACTIVESCRIPT)) {
        TRACE("Ignoring JScript\n");
        return ((void*)0);
    }

    script_host = get_script_host(window, &guid);
    if(!script_host || !script_host->parse_proc)
        return ((void*)0);

    hres = IActiveScriptParseProcedure2_ParseProcedureText(script_host->parse_proc, ptr, ((void*)0), emptyW,
            ((void*)0), ((void*)0), delimiterW, 0 , 0,
            SCRIPTPROC_HOSTMANAGESSOURCE|SCRIPTPROC_IMPLICIT_THIS|SCRIPTPROC_IMPLICIT_PARENTS, &disp);
    if(FAILED(hres)) {
        WARN("ParseProcedureText failed: %08x\n", hres);
        return ((void*)0);
    }

    TRACE("ret %p\n", disp);
    return disp;
}
