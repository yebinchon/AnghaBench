#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  map; int /*<<< orphan*/  global_map; } ;
typedef  TYPE_1__ vlc_actions_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_6__ {TYPE_1__* actions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_key_to_action ; 

void FUNC6 (libvlc_int_t *libvlc)
{
    FUNC0(libvlc != NULL);

    vlc_actions_t *as = FUNC2(libvlc)->actions;
    if (FUNC4(as == NULL))
        return;

    FUNC5 (libvlc, "global-key-pressed", vlc_key_to_action,
                     &as->global_map);
    FUNC5 (libvlc, "key-pressed", vlc_key_to_action, &as->map);

    FUNC3 (as->global_map, free);
    FUNC3 (as->map, free);
    FUNC1 (as);
    FUNC2(libvlc)->actions = NULL;
}