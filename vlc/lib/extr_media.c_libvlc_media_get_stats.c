
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
struct TYPE_8__ {int i_lost_abuffers; int i_played_abuffers; int i_lost_pictures; int i_displayed_pictures; int i_decoded_audio; int i_decoded_video; int i_demux_discontinuity; int i_demux_corrupted; int f_demux_bitrate; int i_demux_read_bytes; int f_input_bitrate; int i_read_bytes; } ;
typedef TYPE_2__ libvlc_media_stats_t ;
struct TYPE_9__ {int i_lost_abuffers; int i_played_abuffers; int i_lost_pictures; int i_displayed_pictures; int i_decoded_audio; int i_decoded_video; int i_demux_discontinuity; int i_demux_corrupted; int f_demux_bitrate; int i_demux_read_bytes; int f_input_bitrate; int i_read_bytes; } ;
typedef TYPE_3__ input_stats_t ;
struct TYPE_10__ {int lock; TYPE_3__* p_stats; } ;
typedef TYPE_4__ input_item_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool libvlc_media_get_stats(libvlc_media_t *p_md,
                            libvlc_media_stats_t *p_stats)
{
    input_item_t *item = p_md->p_input_item;

    if( !p_md->p_input_item )
        return 0;

    vlc_mutex_lock( &item->lock );

    input_stats_t *p_itm_stats = p_md->p_input_item->p_stats;
    if( p_itm_stats == ((void*)0) )
    {
        vlc_mutex_unlock( &item->lock );
        return 0;
    }

    p_stats->i_read_bytes = p_itm_stats->i_read_bytes;
    p_stats->f_input_bitrate = p_itm_stats->f_input_bitrate;

    p_stats->i_demux_read_bytes = p_itm_stats->i_demux_read_bytes;
    p_stats->f_demux_bitrate = p_itm_stats->f_demux_bitrate;
    p_stats->i_demux_corrupted = p_itm_stats->i_demux_corrupted;
    p_stats->i_demux_discontinuity = p_itm_stats->i_demux_discontinuity;

    p_stats->i_decoded_video = p_itm_stats->i_decoded_video;
    p_stats->i_decoded_audio = p_itm_stats->i_decoded_audio;

    p_stats->i_displayed_pictures = p_itm_stats->i_displayed_pictures;
    p_stats->i_lost_pictures = p_itm_stats->i_lost_pictures;

    p_stats->i_played_abuffers = p_itm_stats->i_played_abuffers;
    p_stats->i_lost_abuffers = p_itm_stats->i_lost_abuffers;

    vlc_mutex_unlock( &item->lock );
    return 1;
}
