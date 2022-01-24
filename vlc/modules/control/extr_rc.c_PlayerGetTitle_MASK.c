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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_title {char* name; } ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  playlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 struct vlc_player_title* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(intf_thread_t *intf)
{
    vlc_player_t *player = FUNC4(intf->p_sys->playlist);
    const struct vlc_player_title *title;

    FUNC2(player);
    title = FUNC1(player);
    FUNC0(intf, "%s", (title != NULL) ? title->name : "");
    FUNC3(player);
}