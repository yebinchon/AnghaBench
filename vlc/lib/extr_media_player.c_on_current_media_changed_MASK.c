#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_13__ {int /*<<< orphan*/ * p_input_item; } ;
typedef  TYPE_3__ libvlc_media_t ;
struct TYPE_14__ {int /*<<< orphan*/  event_manager; TYPE_3__* p_md; int /*<<< orphan*/  p_libvlc_instance; } ;
typedef  TYPE_4__ libvlc_media_player_t ;
struct TYPE_11__ {TYPE_3__* new_media; } ;
struct TYPE_12__ {TYPE_1__ media_player_media_changed; } ;
struct TYPE_15__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ libvlc_event_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  libvlc_MediaPlayerMediaChanged ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(vlc_player_t *player, input_item_t *new_media,
                         void *data)
{
    (void) player;

    libvlc_media_player_t *mp = data;

    libvlc_media_t *md = mp->p_md;

    input_item_t *media = md ? md->p_input_item : NULL;
    if (new_media == media)
        /* no changes */
        return;

    if (md)
        FUNC4(md);

    if (new_media)
    {
        mp->p_md = FUNC1(mp->p_libvlc_instance,
                                                    new_media);
        if (!mp->p_md)
            /* error already printed by the function call */
            return;

        FUNC3(mp->p_md);
    }
    else
        mp->p_md = NULL;

    FUNC2(md);

    libvlc_event_t event;
    event.type = libvlc_MediaPlayerMediaChanged;
    event.u.media_player_media_changed.new_media = mp->p_md;
    FUNC0(&mp->event_manager, &event);
}