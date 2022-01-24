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
struct TYPE_3__ {size_t cmd_list_length; struct TYPE_3__* selected_list; struct TYPE_3__* active_list; struct TYPE_3__* urgent_list; struct TYPE_3__* cmd_list; struct TYPE_3__* icon_name; struct TYPE_3__* entry; scalar_t__ cancel; scalar_t__ input_stream; scalar_t__ data_input_stream; int /*<<< orphan*/  cancel_source; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_1__ DmenuModePrivateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 ( Mode *sw )
{
    if ( FUNC5 ( sw ) == NULL ) {
        return;
    }
    DmenuModePrivateData *pd = (DmenuModePrivateData *) FUNC5 ( sw );
    if ( pd != NULL ) {
        if ( pd->cancel  ) {
            // If open, cancel reads.
            if ( pd->input_stream && !FUNC3 ( pd->input_stream ) ) {
                FUNC0 ( pd->cancel );
            }
            // This blocks until cancel is done.
            FUNC1 ( pd->cancel, pd->cancel_source );
            if ( pd->input_stream ) {
                // Should close the stream if not yet done.
                FUNC4 ( pd->data_input_stream );
                FUNC4 ( pd->input_stream );
            }
            FUNC4 ( pd->cancel );
        }

        for ( size_t i = 0; i < pd->cmd_list_length; i++ ) {
            if ( pd->cmd_list[i].entry ) {
                FUNC2 ( pd->cmd_list[i].entry );
                FUNC2 ( pd->cmd_list[i].icon_name );
            }
        }
        FUNC2 ( pd->cmd_list );
        FUNC2 ( pd->urgent_list );
        FUNC2 ( pd->active_list );
        FUNC2 ( pd->selected_list );

        FUNC2 ( pd );
        FUNC6 ( sw, NULL );
    }
}