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
struct TYPE_3__ {size_t unique_actions_count; int /*<<< orphan*/ ** unique_actions; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 

UINT FUNC5( MSIPACKAGE *package, const WCHAR *action )
{
    UINT count;
    WCHAR **newbuf = NULL;

    FUNC0("Registering %s as unique action\n", FUNC1(action));

    count = package->unique_actions_count;
    package->unique_actions_count++;
    if (count != 0) newbuf = FUNC3( package->unique_actions,
                                          package->unique_actions_count * sizeof(WCHAR *) );
    else newbuf = FUNC2( sizeof(WCHAR *) );

    newbuf[count] = FUNC4( action );
    package->unique_actions = newbuf;
    return ERROR_SUCCESS;
}