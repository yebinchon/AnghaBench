#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  window; } ;
struct TYPE_9__ {int /*<<< orphan*/  nsscript; scalar_t__ parsed; } ;
struct TYPE_8__ {int /*<<< orphan*/  parse_proc; } ;
typedef  TYPE_1__ ScriptHost ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_2__ HTMLScriptElement ;
typedef  TYPE_3__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int SCRIPTPROC_HOSTMANAGESSOURCE ; 
 int SCRIPTPROC_IMPLICIT_PARENTS ; 
 int SCRIPTPROC_IMPLICIT_THIS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  emptyW ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  script_endW ; 

__attribute__((used)) static IDispatch *FUNC15(HTMLDocumentNode *doc, HTMLScriptElement *script_elem, WCHAR **ret_event)
{
    ScriptHost *script_host;
    WCHAR *event = NULL;
    const WCHAR *args;
    nsAString nsstr;
    IDispatch *disp;
    nsresult nsres;
    HRESULT hres;

    if(script_elem->parsed)
        return NULL;

    script_host = FUNC6(doc->window, script_elem);
    if(!script_host || !script_host->parse_proc)
        return NULL;

    FUNC11(&nsstr, NULL);
    nsres = FUNC12(script_elem->nsscript, &nsstr);
    if(FUNC3(nsres)) {
        const PRUnichar *event_val;

        FUNC10(&nsstr, &event_val);
        event = FUNC8(event_val);
    }
    FUNC9(&nsstr);
    if(!event)
        return NULL;

    if(!FUNC14(event, &args)) {
        FUNC4("parsing %s failed\n", FUNC5(event));
        FUNC7(event);
        return NULL;
    }

    FUNC11(&nsstr, NULL);
    nsres = FUNC13(script_elem->nsscript, &nsstr);
    if(FUNC3(nsres)) {
        const PRUnichar *text;

        FUNC10(&nsstr, &text);
        hres = FUNC2(script_host->parse_proc, text, args,
                emptyW, NULL, NULL, script_endW, 0, 0,
                SCRIPTPROC_HOSTMANAGESSOURCE|SCRIPTPROC_IMPLICIT_THIS|SCRIPTPROC_IMPLICIT_PARENTS, &disp);
        if(FUNC1(hres))
            disp = NULL;
    }else {
        FUNC0("GetText failed: %08x\n", nsres);
        disp = NULL;
    }
    FUNC9(&nsstr);
    if(!disp) {
        FUNC7(event);
        return NULL;
    }

    *ret_event = event;
    return disp;
}