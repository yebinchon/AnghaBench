#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* package; struct TYPE_6__* target; struct TYPE_6__* source; struct TYPE_6__* action; scalar_t__ handle; int /*<<< orphan*/  entry; int /*<<< orphan*/  refs; } ;
typedef  TYPE_2__ msi_custom_action_info ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msi_custom_action_cs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( msi_custom_action_info *info )
{
    FUNC1( &msi_custom_action_cs );

    if (!--info->refs)
    {
        FUNC3( &info->entry );
        if (info->handle)
            FUNC0( info->handle );
        FUNC4( info->action );
        FUNC4( info->source );
        FUNC4( info->target );
        FUNC5( &info->package->hdr );
        FUNC4( info );
    }

    FUNC2( &msi_custom_action_cs );
}