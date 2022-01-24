#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_6__ {struct TYPE_6__* p_sys; } ;
typedef  TYPE_1__ vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
typedef  TYPE_1__ intf_thread_t ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef  enum vlc_player_vout_action { ____Placeholder_vlc_player_vout_action } vlc_player_vout_action ;

/* Variables and functions */
 int /*<<< orphan*/  MouseButtonCallback ; 
 int /*<<< orphan*/  MouseMovedCallback ; 
 scalar_t__ VIDEO_ES ; 
#define  VLC_PLAYER_VOUT_STARTED 129 
#define  VLC_PLAYER_VOUT_STOPPED 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ViewpointMovedCallback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(vlc_player_t *player,
                       enum vlc_player_vout_action action, vout_thread_t *vout,
                       enum vlc_vout_order order, vlc_es_id_t *es_id,
                       void *data)
{
    FUNC0(order);
    intf_thread_t *intf = data;

    if (FUNC5(es_id) != VIDEO_ES)
        return;

    bool vrnav = FUNC3(vout, "viewpoint-changeable");
    switch (action)
    {
        case VLC_PLAYER_VOUT_STARTED:
            FUNC1(vout, "mouse-button-down", MouseButtonCallback, intf);
            FUNC1(vout, "mouse-moved", MouseMovedCallback, intf->p_sys);
            if (vrnav)
                FUNC1(vout, "viewpoint-moved",
                                ViewpointMovedCallback, player);
            break;
        case VLC_PLAYER_VOUT_STOPPED:
            FUNC2(vout, "mouse-button-down", MouseButtonCallback, intf);
            FUNC2(vout, "mouse-moved", MouseMovedCallback, intf->p_sys);
            if (vrnav)
                FUNC2(vout, "viewpoint-moved",
                                ViewpointMovedCallback, player);
            break;
        default:
            FUNC4();
    }
}