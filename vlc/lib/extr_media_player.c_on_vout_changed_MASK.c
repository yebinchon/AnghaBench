#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct TYPE_8__ {int /*<<< orphan*/  event_manager; } ;
typedef  TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {size_t new_count; } ;
struct TYPE_7__ {TYPE_1__ media_player_vout; } ;
struct TYPE_9__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef  enum vlc_player_vout_action { ____Placeholder_vlc_player_vout_action } vlc_player_vout_action ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  libvlc_MediaPlayerVout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(vlc_player_t *player, enum vlc_player_vout_action action,
                vout_thread_t *vout, enum vlc_vout_order order,
                vlc_es_id_t *es_id, void *data)
{
    (void) action;
    (void) vout;
    (void) order;

    if (FUNC2(es_id) != VIDEO_ES)
        return;

    libvlc_media_player_t *mp = data;

    size_t count;
    vout_thread_t **vouts = FUNC3(player, &count);
    if (!vouts)
        return;
    for (size_t i = 0; i < count; ++i)
        FUNC4(vouts[i]);
    FUNC0(vouts);

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerVout;
    event.u.media_player_vout.new_count = count;

    FUNC1(&mp->event_manager, &event);
}