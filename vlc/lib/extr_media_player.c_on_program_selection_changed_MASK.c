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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_program {int /*<<< orphan*/  scrambled; } ;
struct TYPE_8__ {int /*<<< orphan*/  event_manager; } ;
typedef  TYPE_3__ libvlc_media_player_t ;
struct TYPE_6__ {int /*<<< orphan*/  new_scrambled; } ;
struct TYPE_7__ {TYPE_1__ media_player_scrambled_changed; } ;
struct TYPE_9__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_player_program const*) ; 
 int /*<<< orphan*/  libvlc_MediaPlayerScrambledChanged ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 struct vlc_player_program* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(vlc_player_t *player, int unselected_id,
                             int selected_id, void *data)
{
    (void) unselected_id;

    libvlc_media_player_t *mp = data;

    if (selected_id == -1)
        return;

    const struct vlc_player_program *program =
        FUNC2(player);
    FUNC0(program);

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerScrambledChanged;
    event.u.media_player_scrambled_changed.new_scrambled = program->scrambled;

    FUNC1(&mp->event_manager, &event);
}