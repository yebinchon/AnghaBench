#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t i_release; size_t i_tracks; struct TYPE_4__* p_releases; struct TYPE_4__* p_tracks; struct TYPE_4__* psz_artist; struct TYPE_4__* psz_title; struct TYPE_4__* psz_coverart_url; struct TYPE_4__* psz_date; struct TYPE_4__* psz_group_id; struct TYPE_4__* psz_id; } ;
typedef  TYPE_1__ musicbrainz_recording_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(musicbrainz_recording_t *mbr)
{
    for(size_t i=0; i<mbr->i_release; i++)
    {
        FUNC0(mbr->p_releases[i].psz_id);
        FUNC0(mbr->p_releases[i].psz_group_id);
        FUNC0(mbr->p_releases[i].psz_artist);
        FUNC0(mbr->p_releases[i].psz_title);
        FUNC0(mbr->p_releases[i].psz_date);
        FUNC0(mbr->p_releases[i].psz_coverart_url);
        for(size_t j=0; j<mbr->p_releases[i].i_tracks; j++)
        {
            FUNC0(mbr->p_releases[i].p_tracks[j].psz_title);
            FUNC0(mbr->p_releases[i].p_tracks[j].psz_artist);
        }
        FUNC0(mbr->p_releases[i].p_tracks);
    }
    FUNC0(mbr->p_releases);
    FUNC0(mbr);
}