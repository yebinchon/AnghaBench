#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ winver; int /*<<< orphan*/  dll; int /*<<< orphan*/  (* unhook ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  second; int /*<<< orphan*/  post; int /*<<< orphan*/  pre; int /*<<< orphan*/  reason; int /*<<< orphan*/  name; scalar_t__ (* hook ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ _WIN32_WINNT_WS03 ; 
 scalar_t__ g_Version ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * pGetHookAPIs ; 
 void* pNotifyShims ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* tests ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(size_t n, BOOL unload)
{
    BOOL ret;
    HMODULE dll;

    if (!FUNC3(tests[n].dll, &dll, &pGetHookAPIs))
        pGetHookAPIs = NULL;
    pNotifyShims = (void*)FUNC2(dll, "NotifyShims");

    if (!pGetHookAPIs || !pNotifyShims)
    {
        FUNC6("%s not loaded, or does not export GetHookAPIs or pNotifyShims (%s, %p, %p)\n",
             FUNC11(tests[n].dll), tests[n].name, pGetHookAPIs, pNotifyShims);
        return;
    }

    g_Version = FUNC4(dll);

    if (!g_Version)
    {
        g_Version = _WIN32_WINNT_WS03;
        FUNC10("Module %s has no version, faking 2k3\n", FUNC11(tests[n].dll));
    }

    if (g_Version >= tests[n].winver)
    {
        ret = tests[n].hook(dll);
        if (ret)
        {
            FUNC9(tests[n].name, tests[n].reason, tests[n].pre, tests[n].post, tests[n].second);
            tests[n].unhook(dll);
        }
        else
        {
            FUNC5(0, "Unable to redirect functions!\n");
        }
    }
    FUNC0(dll);
    if (unload)
    {
        dll = FUNC1(tests[n].dll);
        FUNC5(dll == NULL, "Unable to unload %s\n", FUNC11(tests[n].dll));
    }
}