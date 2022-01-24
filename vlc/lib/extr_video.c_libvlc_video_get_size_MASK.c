#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ i_type; TYPE_1__* video; } ;
typedef  TYPE_2__ libvlc_media_track_t ;
struct TYPE_9__ {int /*<<< orphan*/ * p_md; } ;
typedef  TYPE_3__ libvlc_media_player_t ;
struct TYPE_7__ {unsigned int i_width; unsigned int i_height; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,unsigned int) ; 
 scalar_t__ libvlc_track_video ; 

int FUNC2( libvlc_media_player_t *p_mi, unsigned num,
                           unsigned *restrict px, unsigned *restrict py )
{
    if (p_mi->p_md == NULL)
        return -1;

    libvlc_media_track_t **tracks;
    unsigned count = FUNC0(p_mi->p_md, &tracks);
    int ret = -1;

    for (unsigned i = 0; i < count; i++)
        if (tracks[i]->i_type == libvlc_track_video && num-- == 0) {
            *px = tracks[i]->video->i_width;
            *py = tracks[i]->video->i_height;
            ret = 0;
            break;
        }

    FUNC1(tracks, count);
    return ret;
}