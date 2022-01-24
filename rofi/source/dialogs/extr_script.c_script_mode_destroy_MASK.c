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
struct TYPE_6__ {int /*<<< orphan*/ * private_data; } ;
struct TYPE_5__ {unsigned int cmd_list_length; struct TYPE_5__* active_list; struct TYPE_5__* urgent_list; struct TYPE_5__* prompt; struct TYPE_5__* message; struct TYPE_5__* cmd_list; struct TYPE_5__* icon_name; struct TYPE_5__* entry; } ;
typedef  TYPE_1__ ScriptModePrivateData ;
typedef  TYPE_2__ Mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1 ( Mode *sw )
{
    ScriptModePrivateData *rmpd = (ScriptModePrivateData *) sw->private_data;
    if ( rmpd != NULL ) {
        for ( unsigned int i = 0; i < rmpd->cmd_list_length; i++ ){
            FUNC0 ( rmpd->cmd_list[i].entry );
            FUNC0 ( rmpd->cmd_list[i].icon_name );
        }
        FUNC0 ( rmpd->cmd_list );
        FUNC0 ( rmpd->message );
        FUNC0 ( rmpd->prompt );
        FUNC0 ( rmpd->urgent_list );
        FUNC0 ( rmpd->active_list );
        FUNC0 ( rmpd );
        sw->private_data = NULL;
    }
}