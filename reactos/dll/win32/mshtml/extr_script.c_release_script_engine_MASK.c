#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int script_state; int /*<<< orphan*/ * script; int /*<<< orphan*/ * parse; int /*<<< orphan*/ * parse_proc; } ;
typedef  TYPE_1__ ScriptHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
#define  SCRIPTSTATE_CONNECTED 131 
#define  SCRIPTSTATE_DISCONNECTED 130 
#define  SCRIPTSTATE_INITIALIZED 129 
#define  SCRIPTSTATE_STARTED 128 
 int SCRIPTSTATE_UNINITIALIZED ; 

__attribute__((used)) static void FUNC5(ScriptHost *This)
{
    if(!This->script)
        return;

    switch(This->script_state) {
    case SCRIPTSTATE_CONNECTED:
        FUNC4(This->script, SCRIPTSTATE_DISCONNECTED);

    case SCRIPTSTATE_STARTED:
    case SCRIPTSTATE_DISCONNECTED:
    case SCRIPTSTATE_INITIALIZED:
        FUNC2(This->script);

    default:
        if(This->parse_proc) {
            FUNC0(This->parse_proc);
            This->parse_proc = NULL;
        }

        if(This->parse) {
            FUNC1(This->parse);
            This->parse = NULL;
        }
    }

    FUNC3(This->script);
    This->script = NULL;
    This->script_state = SCRIPTSTATE_UNINITIALIZED;
}