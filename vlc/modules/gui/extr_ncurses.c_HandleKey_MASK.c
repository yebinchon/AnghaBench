#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_10__ {int box_type; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int BOX_BROWSE ; 
 int BOX_NONE ; 
 int BOX_OPEN ; 
 int BOX_PLAYLIST ; 
 int BOX_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
#define  KEY_DOWN 132 
#define  KEY_END 131 
#define  KEY_HOME 130 
#define  KEY_SELECT 129 
#define  KEY_UP 128 
 int FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int key = FUNC6();
    int box = sys->box_type;

    vlc_player_t *player = FUNC7(sys->playlist);

    if (key == -1)
        return;

    if (box == BOX_SEARCH || box == BOX_OPEN) {
        FUNC3(intf, key, sys->box_type);
        return;
    }

    if (box == BOX_NONE)
        switch(key)
        {
#ifdef __FreeBSD__
        case KEY_SELECT:
#endif
        case KEY_END:   FUNC0(player, +.99);       return;
        case KEY_HOME:  FUNC0(player, -1.0);       return;
        case KEY_UP:    FUNC0(player, +0.05);      return;
        case KEY_DOWN:  FUNC0(player, -0.05);      return;
        default:        FUNC2(intf, player, key); return;
        }

    if (box == BOX_BROWSE   && FUNC1(intf, key))
        return;

    if (box == BOX_PLAYLIST && FUNC5(intf, key))
        return;

    if (FUNC4(intf, key))
        return;

    FUNC2(intf, player, key);
}