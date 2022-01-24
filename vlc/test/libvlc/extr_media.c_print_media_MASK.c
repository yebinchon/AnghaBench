#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int i_type; TYPE_3__* subtitle; TYPE_2__* video; TYPE_1__* audio; int /*<<< orphan*/  i_original_fourcc; int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_4__ libvlc_media_track_t ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  enum libvlc_meta_t { ____Placeholder_libvlc_meta_t } libvlc_meta_t ;
struct TYPE_9__ {char* psz_encoding; } ;
struct TYPE_8__ {int i_width; int i_height; int i_sar_num; int i_sar_den; int i_frame_rate_num; int i_frame_rate_den; } ;
struct TYPE_7__ {int i_channels; int i_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,TYPE_4__***) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,unsigned int) ; 
 int libvlc_meta_DiscTotal ; 
 int libvlc_meta_Title ; 
#define  libvlc_track_audio 131 
#define  libvlc_track_text 130 
#define  libvlc_track_unknown 129 
#define  libvlc_track_video 128 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(libvlc_media_t *media)
{
    libvlc_media_track_t **pp_tracks;
    unsigned i_count = FUNC2(media, &pp_tracks);
    if (i_count > 0)
    {
        for (unsigned i = 0; i < i_count; ++i)
        {
            libvlc_media_track_t *p_track = pp_tracks[i];
            FUNC5("\ttrack(%d/%d): codec: %4.4s/%4.4s, ", i, p_track->i_id,
                (const char *)&p_track->i_codec,
                (const char *)&p_track->i_original_fourcc);
            switch (p_track->i_type)
            {
            case libvlc_track_audio:
                FUNC4("audio: channels: %u, rate: %u\n",
                       p_track->audio->i_channels, p_track->audio->i_rate);
                break;
            case libvlc_track_video:
                FUNC4("video: %ux%u, sar: %u/%u, fps: %u/%u\n",
                       p_track->video->i_width, p_track->video->i_height,
                       p_track->video->i_sar_num, p_track->video->i_sar_den,
                       p_track->video->i_frame_rate_num, p_track->video->i_frame_rate_den);
                break;
            case libvlc_track_text:
                FUNC4("text: %s\n", p_track->subtitle->psz_encoding);
                break;
            case libvlc_track_unknown:
                FUNC4("unknown\n");
                break;
            default:
                FUNC6();
            }
        }
        FUNC3(pp_tracks, i_count);
    }
    else
        FUNC5("\tmedia doesn't have any tracks\n");

    for (enum libvlc_meta_t i = libvlc_meta_Title;
         i <= libvlc_meta_DiscTotal; ++i)
    {
        char *psz_meta = FUNC1(media, i);
        if (psz_meta != NULL)
            FUNC5("\tmeta(%d): '%s'\n", i, psz_meta);
        FUNC0(psz_meta);
    }
}