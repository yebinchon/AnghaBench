#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOmHistory ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLHistory ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IOmHistory ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5(IHTMLWindow2 *window)
{
    IOmHistory *history, *history2;
    HRESULT hres;

    history = NULL;
    hres = FUNC0(window, &history);
    FUNC3(hres == S_OK, "get_history failed: %08x\n", hres);
    FUNC3(history != NULL, "history = NULL\n");

    FUNC4((IUnknown*)history, &DIID_DispHTMLHistory, &IID_IOmHistory, "[object]");

    history2 = NULL;
    hres = FUNC0(window, &history2);
    FUNC3(hres == S_OK, "get_history failed: %08x\n", hres);
    FUNC3(history2 != NULL, "history2 = NULL\n");
    FUNC3(FUNC2((IUnknown*)history, (IUnknown*)history2), "history != history2\n");

    FUNC1(history2);
    FUNC1(history);
}