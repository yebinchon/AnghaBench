#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_10__ {TYPE_1__* outer_window; } ;
struct TYPE_12__ {TYPE_2__ base; } ;
struct TYPE_11__ {int /*<<< orphan*/  parse_proc; } ;
struct TYPE_9__ {scalar_t__ scriptmode; } ;
typedef  TYPE_3__ ScriptHost ;
typedef  scalar_t__* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_4__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_JScript ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ SCRIPTMODE_ACTIVESCRIPT ; 
 int SCRIPTPROC_HOSTMANAGESSOURCE ; 
 int SCRIPTPROC_IMPLICIT_PARENTS ; 
 int SCRIPTPROC_IMPLICIT_THIS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  emptyW ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 scalar_t__ FUNC11 (char const) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,int) ; 

IDispatch *FUNC13(HTMLInnerWindow *window, LPCWSTR text)
{
    ScriptHost *script_host;
    GUID guid;
    const WCHAR *ptr;
    IDispatch *disp;
    HRESULT hres;

    static const WCHAR delimiterW[] = {'\"',0};

    FUNC3("%s\n", FUNC5(text));

    for(ptr = text; FUNC11(*ptr); ptr++);
    if(*ptr == ':') {
        LPWSTR language;
        BOOL b;

        language = FUNC9((ptr-text+1)*sizeof(WCHAR));
        if(!language)
            return NULL;

        FUNC12(language, text, (ptr-text)*sizeof(WCHAR));
        language[ptr-text] = 0;

        b = FUNC7(language, &guid);

        FUNC10(language);

        if(!b) {
            FUNC4("Could not find language\n");
            return NULL;
        }

        ptr++;
    }else {
        ptr = text;
        guid = FUNC6(window);
    }

    if(FUNC2(&CLSID_JScript, &guid)
       && (!window->base.outer_window || window->base.outer_window->scriptmode != SCRIPTMODE_ACTIVESCRIPT)) {
        FUNC3("Ignoring JScript\n");
        return NULL;
    }

    script_host = FUNC8(window, &guid);
    if(!script_host || !script_host->parse_proc)
        return NULL;

    hres = FUNC1(script_host->parse_proc, ptr, NULL, emptyW,
            NULL, NULL, delimiterW, 0 /* FIXME */, 0,
            SCRIPTPROC_HOSTMANAGESSOURCE|SCRIPTPROC_IMPLICIT_THIS|SCRIPTPROC_IMPLICIT_PARENTS, &disp);
    if(FUNC0(hres)) {
        FUNC4("ParseProcedureText failed: %08x\n", hres);
        return NULL;
    }

    FUNC3("ret %p\n", disp);
    return disp;
}