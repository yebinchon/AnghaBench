#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* starts; int num_switchers; unsigned int* lengths; scalar_t__ cmd_list_length; TYPE_1__* switchers; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ CombiModePrivateData ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC6 ( Mode *sw )
{
    if ( FUNC3 ( sw ) == NULL ) {
        CombiModePrivateData *pd = FUNC1 ( sizeof ( *pd ) );
        FUNC5 ( sw, (void *) pd );
        FUNC0 ( sw );
        pd->starts  = FUNC1 ( sizeof ( int ) * pd->num_switchers );
        pd->lengths = FUNC1 ( sizeof ( int ) * pd->num_switchers );
        for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
            if ( !FUNC4 ( pd->switchers[i].mode ) ) {
                return FALSE;
            }
        }
        if ( pd->cmd_list_length == 0 ) {
            pd->cmd_list_length = 0;
            for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
                unsigned int length = FUNC2 ( pd->switchers[i].mode );
                pd->starts[i]        = pd->cmd_list_length;
                pd->lengths[i]       = length;
                pd->cmd_list_length += length;
            }
        }
    }
    return TRUE;
}