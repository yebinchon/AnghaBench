#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_6__ {int /*<<< orphan*/  parsed; int /*<<< orphan*/  nsscript; } ;
typedef  int /*<<< orphan*/  ScriptHost ;
typedef  scalar_t__ PRUnichar ;
typedef  TYPE_1__ HTMLScriptElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READYSTATE_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(ScriptHost *script_host, HTMLScriptElement *script_elem)
{
    nsAString src_str, event_str;
    const PRUnichar *src;
    nsresult nsres;

    FUNC7(&event_str, NULL);
    nsres = FUNC8(script_elem->nsscript, &event_str);
    if(FUNC2(nsres)) {
        const PRUnichar *event;

        FUNC6(&event_str, &event);
        if(*event) {
            FUNC3("deferring event %s script evaluation\n", FUNC4(event));
            FUNC5(&event_str);
            return;
        }
    }else {
        FUNC0("GetEvent failed: %08x\n", nsres);
    }
    FUNC5(&event_str);

    FUNC7(&src_str, NULL);
    nsres = FUNC9(script_elem->nsscript, &src_str);
    FUNC6(&src_str, &src);

    if(FUNC1(nsres)) {
        FUNC0("GetSrc failed: %08x\n", nsres);
    }else if(*src) {
        script_elem->parsed = TRUE;
        FUNC10(script_host, script_elem, src);
    }else {
        FUNC11(script_host, script_elem);
    }

    FUNC5(&src_str);

    FUNC12(script_elem, READYSTATE_COMPLETE);
}