#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  script_hosts; } ;
struct TYPE_19__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_18__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_17__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_20__ {int ref; int /*<<< orphan*/  script; int /*<<< orphan*/  guid; int /*<<< orphan*/  entry; int /*<<< orphan*/  script_state; TYPE_8__* window; TYPE_6__ IServiceProvider_iface; TYPE_5__ IActiveScriptSiteDebug_iface; TYPE_4__ IActiveScriptSiteUIControl_iface; TYPE_3__ IActiveScriptSiteWindow_iface; TYPE_2__ IActiveScriptSiteInterruptPoll_iface; TYPE_1__ IActiveScriptSite_iface; } ;
typedef  TYPE_7__ ScriptHost ;
typedef  TYPE_8__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  ASServiceProviderVtbl ; 
 int /*<<< orphan*/  ActiveScriptSiteDebugVtbl ; 
 int /*<<< orphan*/  ActiveScriptSiteInterruptPollVtbl ; 
 int /*<<< orphan*/  ActiveScriptSiteUIControlVtbl ; 
 int /*<<< orphan*/  ActiveScriptSiteVtbl ; 
 int /*<<< orphan*/  ActiveScriptSiteWindowVtbl ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 

__attribute__((used)) static ScriptHost *FUNC7(HTMLInnerWindow *window, const GUID *guid)
{
    ScriptHost *ret;
    HRESULT hres;

    ret = FUNC3(sizeof(*ret));
    if(!ret)
        return NULL;

    ret->IActiveScriptSite_iface.lpVtbl = &ActiveScriptSiteVtbl;
    ret->IActiveScriptSiteInterruptPoll_iface.lpVtbl = &ActiveScriptSiteInterruptPollVtbl;
    ret->IActiveScriptSiteWindow_iface.lpVtbl = &ActiveScriptSiteWindowVtbl;
    ret->IActiveScriptSiteUIControl_iface.lpVtbl = &ActiveScriptSiteUIControlVtbl;
    ret->IActiveScriptSiteDebug_iface.lpVtbl = &ActiveScriptSiteDebugVtbl;
    ret->IServiceProvider_iface.lpVtbl = &ASServiceProviderVtbl;
    ret->ref = 1;
    ret->window = window;
    ret->script_state = SCRIPTSTATE_UNINITIALIZED;

    ret->guid = *guid;
    FUNC5(&window->script_hosts, &ret->entry);

    hres = FUNC0(&ret->guid, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IActiveScript, (void**)&ret->script);
    if(FUNC1(hres))
        FUNC2("Could not load script engine: %08x\n", hres);
    else if(!FUNC4(ret))
        FUNC6(ret);

    return ret;
}