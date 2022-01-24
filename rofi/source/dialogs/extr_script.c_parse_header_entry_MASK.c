#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/ * display_name; scalar_t__ private_data; } ;
struct TYPE_4__ {int do_markup; int /*<<< orphan*/  num_active_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  num_urgent_list; int /*<<< orphan*/  urgent_list; int /*<<< orphan*/ * prompt; int /*<<< orphan*/ * message; } ;
typedef  TYPE_1__ ScriptModePrivateData ;
typedef  TYPE_2__ Mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5 ( Mode *sw, char *line, ssize_t length )
{
    ScriptModePrivateData *pd        = (ScriptModePrivateData *) sw->private_data;
    ssize_t               length_key = 0;//strlen ( line );
    while ( length_key <= length && line[length_key] != '\x1f' ) {
        length_key++;
    }

    if ( length_key < length ) {
        line[length_key] = '\0';
        char *value = line + length_key + 1;
        if ( FUNC3 ( line, "message" ) == 0 ) {
            FUNC0 ( pd->message );
            pd->message = FUNC4 ( value ) ? FUNC1 ( value ) : NULL;
        }
        else if ( FUNC3 ( line, "prompt" ) == 0 ) {
            FUNC0 ( pd->prompt );
            pd->prompt       = FUNC1  ( value );
            sw->display_name = pd->prompt;
        }
        else if ( FUNC3 ( line, "markup-rows" ) == 0 ) {
            pd->do_markup = ( FUNC3 ( value, "true" ) == 0 );
        }
        else if ( FUNC3 ( line, "urgent" ) == 0 ) {
            FUNC2 ( value, &( pd->urgent_list ), &( pd->num_urgent_list ) );
        }
        else if ( FUNC3 ( line, "active" ) == 0 ) {
            FUNC2 ( value, &( pd->active_list ), &( pd->num_active_list ) );
        }
    }
}