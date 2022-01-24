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
struct TYPE_3__ {unsigned int num_switchers; struct TYPE_3__* switchers; int /*<<< orphan*/  mode; struct TYPE_3__* lengths; struct TYPE_3__* starts; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_1__ CombiModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 ( Mode *sw )
{
    CombiModePrivateData *pd = (CombiModePrivateData *) FUNC2 ( sw );
    if ( pd != NULL ) {
        FUNC0 ( pd->starts );
        FUNC0 ( pd->lengths );
        // Cleanup switchers.
        for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
            FUNC1 ( pd->switchers[i].mode );
        }
        FUNC0 ( pd->switchers );
        FUNC0 ( pd );
        FUNC3 ( sw, NULL );
    }
}