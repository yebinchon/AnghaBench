#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float new_position; } ;
struct TYPE_6__ {TYPE_1__ media_player_position_changed; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ libvlc_event_t ;

/* Variables and functions */
 double VLC_THUMBNAIL_POSITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int done ; 
#define  libvlc_MediaPlayerPositionChanged 129 
#define  libvlc_MediaPlayerSnapshotTaken 128 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC4(const libvlc_event_t *ev, void *param)
{
    float new_position;
    (void)param;

    FUNC2(&lock);
    switch (ev->type) {
    case libvlc_MediaPlayerPositionChanged:
        new_position = ev->u.media_player_position_changed.new_position;
        if (new_position < VLC_THUMBNAIL_POSITION * .9 /* 90% margin */)
            break;
    case libvlc_MediaPlayerSnapshotTaken:
        done = true;
        FUNC1(&wait);
        break;

    default:
        FUNC0(0);
    }
    FUNC3(&lock);
}