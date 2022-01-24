#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  void* libvlc_audio_resume_cb ;
typedef  void* libvlc_audio_play_cb ;
typedef  void* libvlc_audio_pause_cb ;
typedef  void* libvlc_audio_flush_cb ;
typedef  void* libvlc_audio_drain_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC2( libvlc_media_player_t *mp,
                                 libvlc_audio_play_cb play_cb,
                                 libvlc_audio_pause_cb pause_cb,
                                 libvlc_audio_resume_cb resume_cb,
                                 libvlc_audio_flush_cb flush_cb,
                                 libvlc_audio_drain_cb drain_cb,
                                 void *opaque )
{
    FUNC0( mp, "amem-play", play_cb );
    FUNC0( mp, "amem-pause", pause_cb );
    FUNC0( mp, "amem-resume", resume_cb );
    FUNC0( mp, "amem-flush", flush_cb );
    FUNC0( mp, "amem-drain", drain_cb );
    FUNC0( mp, "amem-data", opaque );
    FUNC1( mp, "aout", "amem,none" );
}