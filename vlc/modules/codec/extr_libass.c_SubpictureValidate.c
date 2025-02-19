
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_10__ {double i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_y_offset; scalar_t__ i_x_offset; scalar_t__ i_bits_per_pixel; int i_chroma; } ;
typedef TYPE_2__ video_format_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
struct TYPE_11__ {int * p_region; scalar_t__ i_start; TYPE_1__ updater; } ;
typedef TYPE_3__ subpicture_t ;
struct TYPE_12__ {int * p_img; scalar_t__ i_pts; TYPE_5__* p_dec_sys; } ;
typedef TYPE_4__ libass_spu_updater_sys_t ;
struct TYPE_13__ {int lock; int p_track; int p_renderer; TYPE_2__ fmt; } ;
typedef TYPE_5__ decoder_sys_t ;
typedef int ASS_Image ;


 int MS_FROM_VLC_TICK (scalar_t__ const) ;
 int VLC_CODEC_RGBA ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * ass_render_frame (int ,int ,int ,int*) ;
 int ass_set_aspect_ratio (int ,double const,int) ;
 int ass_set_frame_size (int ,scalar_t__,double) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int SubpictureValidate( subpicture_t *p_subpic,
                               bool b_fmt_src, const video_format_t *p_fmt_src,
                               bool b_fmt_dst, const video_format_t *p_fmt_dst,
                               vlc_tick_t i_ts )
{
    libass_spu_updater_sys_t *p_spusys = p_subpic->updater.p_sys;
    decoder_sys_t *p_sys = p_spusys->p_dec_sys;

    vlc_mutex_lock( &p_sys->lock );

    video_format_t fmt = *p_fmt_dst;
    fmt.i_chroma = VLC_CODEC_RGBA;
    fmt.i_bits_per_pixel = 0;
    fmt.i_x_offset = 0;
    fmt.i_y_offset = 0;
    if( b_fmt_src || b_fmt_dst )
    {
        ass_set_frame_size( p_sys->p_renderer, fmt.i_visible_width, fmt.i_visible_height );
        const double src_ratio = (double)p_fmt_src->i_visible_width / p_fmt_src->i_visible_height;
        const double dst_ratio = (double)p_fmt_dst->i_visible_width / p_fmt_dst->i_visible_height;
        ass_set_aspect_ratio( p_sys->p_renderer, dst_ratio / src_ratio, 1 );
        p_sys->fmt = fmt;
    }


    const vlc_tick_t i_stream_date = p_spusys->i_pts + (i_ts - p_subpic->i_start);
    int i_changed;
    ASS_Image *p_img = ass_render_frame( p_sys->p_renderer, p_sys->p_track,
                                         MS_FROM_VLC_TICK( i_stream_date ), &i_changed );

    if( !i_changed && !b_fmt_src && !b_fmt_dst &&
        (p_img != ((void*)0)) == (p_subpic->p_region != ((void*)0)) )
    {
        vlc_mutex_unlock( &p_sys->lock );
        return VLC_SUCCESS;
    }
    p_spusys->p_img = p_img;


    return VLC_EGENERIC;
}
