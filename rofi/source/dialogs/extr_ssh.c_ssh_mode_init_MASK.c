#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hosts_list_length; int /*<<< orphan*/  hosts_list; } ;
typedef  TYPE_1__ SSHModePrivateData ;
typedef  int /*<<< orphan*/  Mode ;

/* Variables and functions */
 int TRUE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC4 ( Mode *sw )
{
    if ( FUNC2 ( sw ) == NULL ) {
        SSHModePrivateData *pd = FUNC0 ( sizeof ( *pd ) );
        FUNC3 ( sw, (void *) pd );
        pd->hosts_list = FUNC1 ( pd, &( pd->hosts_list_length ) );
    }
    return TRUE;
}