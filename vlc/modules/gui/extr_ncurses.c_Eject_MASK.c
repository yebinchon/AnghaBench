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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  intf_thread_t ;
struct TYPE_3__ {char* psz_name; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(intf_thread_t *intf, vlc_player_t *player)
{
    char *device, *name;

    /* If there's a stream playing, we aren't allowed to eject ! */
    FUNC5(player);
    bool started = FUNC4(player);
    FUNC6(player);
    if (started)
        return;

    FUNC5(player);
    input_item_t *current = FUNC3(player);
    FUNC6(player);
    if (!current)
        return;
    name = current->psz_name;
    device = name ? FUNC0(name) : NULL;

    if (device) {
        FUNC2(intf, device);
        FUNC1(device);
    }
}