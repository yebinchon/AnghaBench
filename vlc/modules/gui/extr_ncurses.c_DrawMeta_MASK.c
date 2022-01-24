#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_9__ {scalar_t__ color; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ intf_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_meta; } ;
typedef  TYPE_3__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  C_CATEGORY ; 
 int /*<<< orphan*/  C_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int VLC_META_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 char const* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    int l = 0;

    vlc_player_t *player = FUNC10(sys->playlist);
    FUNC8(player);
    input_item_t *item = FUNC7(player);
    FUNC9(player);
    if (!item)
        return 0;

    FUNC5(&item->lock);
    for (int i=0; i<VLC_META_TYPE_COUNT; i++) {
        const char *meta = FUNC3(item->p_meta, i);
        if (!meta || !*meta)
            continue;

        if (sys->color) FUNC1(C_CATEGORY, NULL);
        FUNC0(sys, l++, "  [%s]", FUNC4(i));
        if (sys->color) FUNC1(C_DEFAULT, NULL);
        FUNC0(sys, l++, "      %s", meta);
    }
    FUNC6(&item->lock);

    FUNC2(item);

    return l;
}