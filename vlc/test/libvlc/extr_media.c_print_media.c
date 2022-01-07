
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int i_type; TYPE_3__* subtitle; TYPE_2__* video; TYPE_1__* audio; int i_original_fourcc; int i_codec; int i_id; } ;
typedef TYPE_4__ libvlc_media_track_t ;
typedef int libvlc_media_t ;
typedef enum libvlc_meta_t { ____Placeholder_libvlc_meta_t } libvlc_meta_t ;
struct TYPE_9__ {char* psz_encoding; } ;
struct TYPE_8__ {int i_width; int i_height; int i_sar_num; int i_sar_den; int i_frame_rate_num; int i_frame_rate_den; } ;
struct TYPE_7__ {int i_channels; int i_rate; } ;


 int free (char*) ;
 char* libvlc_media_get_meta (int *,int) ;
 unsigned int libvlc_media_tracks_get (int *,TYPE_4__***) ;
 int libvlc_media_tracks_release (TYPE_4__**,unsigned int) ;
 int libvlc_meta_DiscTotal ;
 int libvlc_meta_Title ;




 int printf (char*,...) ;
 int test_log (char*,...) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void print_media(libvlc_media_t *media)
{
    libvlc_media_track_t **pp_tracks;
    unsigned i_count = libvlc_media_tracks_get(media, &pp_tracks);
    if (i_count > 0)
    {
        for (unsigned i = 0; i < i_count; ++i)
        {
            libvlc_media_track_t *p_track = pp_tracks[i];
            test_log("\ttrack(%d/%d): codec: %4.4s/%4.4s, ", i, p_track->i_id,
                (const char *)&p_track->i_codec,
                (const char *)&p_track->i_original_fourcc);
            switch (p_track->i_type)
            {
            case 131:
                printf("audio: channels: %u, rate: %u\n",
                       p_track->audio->i_channels, p_track->audio->i_rate);
                break;
            case 128:
                printf("video: %ux%u, sar: %u/%u, fps: %u/%u\n",
                       p_track->video->i_width, p_track->video->i_height,
                       p_track->video->i_sar_num, p_track->video->i_sar_den,
                       p_track->video->i_frame_rate_num, p_track->video->i_frame_rate_den);
                break;
            case 130:
                printf("text: %s\n", p_track->subtitle->psz_encoding);
                break;
            case 129:
                printf("unknown\n");
                break;
            default:
                vlc_assert_unreachable();
            }
        }
        libvlc_media_tracks_release(pp_tracks, i_count);
    }
    else
        test_log("\tmedia doesn't have any tracks\n");

    for (enum libvlc_meta_t i = libvlc_meta_Title;
         i <= libvlc_meta_DiscTotal; ++i)
    {
        char *psz_meta = libvlc_media_get_meta(media, i);
        if (psz_meta != ((void*)0))
            test_log("\tmeta(%d): '%s'\n", i, psz_meta);
        free(psz_meta);
    }
}
