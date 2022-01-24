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
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_4__ {scalar_t__ icon_fetch_uid; int /*<<< orphan*/ * icon_name; } ;
struct TYPE_3__ {TYPE_2__* cmd_list; } ;
typedef  TYPE_1__ ScriptModePrivateData ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ DmenuScriptEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static cairo_surface_t *FUNC4 ( const Mode *sw, unsigned int selected_line, int height )
{
    ScriptModePrivateData *pd = (ScriptModePrivateData *) FUNC1 ( sw );
    FUNC0 ( pd->cmd_list != NULL, NULL );
    DmenuScriptEntry *dr = &( pd->cmd_list[selected_line] );
    if ( dr->icon_name == NULL ) {
        return NULL;
    }
    if ( dr->icon_fetch_uid > 0 ) {
        return FUNC2 ( dr->icon_fetch_uid );
    }
    dr->icon_fetch_uid = FUNC3 ( dr->icon_name, height );
    return FUNC2 ( dr->icon_fetch_uid );
}