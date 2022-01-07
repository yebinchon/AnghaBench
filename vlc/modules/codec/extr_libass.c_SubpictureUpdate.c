
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__ const* vlc_tick_t ;
struct TYPE_19__ {scalar_t__ i_visible_height; scalar_t__ i_height; scalar_t__ i_visible_width; scalar_t__ i_width; } ;
typedef TYPE_2__ video_format_t ;
struct TYPE_18__ {TYPE_7__* p_sys; } ;
struct TYPE_20__ {TYPE_5__* p_region; scalar_t__ i_original_picture_width; scalar_t__ i_original_picture_height; TYPE_1__ updater; } ;
typedef TYPE_4__ subpicture_t ;
struct TYPE_21__ {int i_align; struct TYPE_21__* p_next; scalar_t__ i_y; scalar_t__ i_x; } ;
typedef TYPE_5__ subpicture_region_t ;
struct TYPE_22__ {scalar_t__ y0; scalar_t__ x0; scalar_t__ y1; scalar_t__ x1; } ;
typedef TYPE_6__ rectangle_t ;
struct TYPE_23__ {int * p_img; TYPE_8__* p_dec_sys; } ;
typedef TYPE_7__ libass_spu_updater_sys_t ;
struct TYPE_24__ {int lock; TYPE_2__ fmt; } ;
typedef TYPE_8__ decoder_sys_t ;
typedef int ASS_Image ;


 int BuildRegions (TYPE_6__*,int const,int *,scalar_t__,scalar_t__) ;
 int RegionDraw (TYPE_5__*,int *) ;
 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_UNUSED (TYPE_2__ const*) ;
 TYPE_5__* subpicture_region_New (TYPE_2__*) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void SubpictureUpdate( subpicture_t *p_subpic,
                              const video_format_t *p_fmt_src,
                              const video_format_t *p_fmt_dst,
                              vlc_tick_t i_ts )
{
    VLC_UNUSED( p_fmt_src ); VLC_UNUSED( p_fmt_dst ); VLC_UNUSED( i_ts );

    libass_spu_updater_sys_t *p_spusys = p_subpic->updater.p_sys;
    decoder_sys_t *p_sys = p_spusys->p_dec_sys;

    video_format_t fmt = p_sys->fmt;
    ASS_Image *p_img = p_spusys->p_img;


    p_subpic->i_original_picture_height = fmt.i_visible_height;
    p_subpic->i_original_picture_width = fmt.i_visible_width;







    const int i_max_region = 4;
    rectangle_t region[i_max_region];
    const int i_region = BuildRegions( region, i_max_region, p_img, fmt.i_width, fmt.i_height );

    if( i_region <= 0 )
    {
        vlc_mutex_unlock( &p_sys->lock );
        return;
    }


    subpicture_region_t **pp_region_last = &p_subpic->p_region;

    for( int i = 0; i < i_region; i++ )
    {
        subpicture_region_t *r;
        video_format_t fmt_region;


        fmt_region = fmt;
        fmt_region.i_width =
        fmt_region.i_visible_width = region[i].x1 - region[i].x0;
        fmt_region.i_height =
        fmt_region.i_visible_height = region[i].y1 - region[i].y0;

        r = subpicture_region_New( &fmt_region );
        if( !r )
            break;
        r->i_x = region[i].x0;
        r->i_y = region[i].y0;
        r->i_align = SUBPICTURE_ALIGN_TOP | SUBPICTURE_ALIGN_LEFT;


        RegionDraw( r, p_img );


        *pp_region_last = r;
        pp_region_last = &r->p_next;
    }
    vlc_mutex_unlock( &p_sys->lock );

}
