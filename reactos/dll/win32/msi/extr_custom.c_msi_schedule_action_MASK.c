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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_3__ {size_t* script_actions_count; int /*<<< orphan*/ *** script_actions; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t SCRIPT_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 

UINT FUNC6( MSIPACKAGE *package, UINT script, const WCHAR *action )
{
    UINT count;
    WCHAR **newbuf = NULL;

    if (script >= SCRIPT_MAX)
    {
        FUNC0("Unknown script requested %u\n", script);
        return ERROR_FUNCTION_FAILED;
    }
    FUNC1("Scheduling action %s in script %u\n", FUNC2(action), script);

    count = package->script_actions_count[script];
    package->script_actions_count[script]++;
    if (count != 0) newbuf = FUNC4( package->script_actions[script],
                                          package->script_actions_count[script] * sizeof(WCHAR *) );
    else newbuf = FUNC3( sizeof(WCHAR *) );

    newbuf[count] = FUNC5( action );
    package->script_actions[script] = newbuf;
    return ERROR_SUCCESS;
}