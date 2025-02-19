
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_26__ {int i_sar_num; int i_sar_den; int color_range; int space; int primaries; int transfer; scalar_t__ i_y_offset; scalar_t__ i_x_offset; int i_visible_height; int i_height; int i_visible_width; int i_width; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_27__ {int b_absolute; int b_ephemer; int i_alpha; TYPE_5__* p_region; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef TYPE_4__ subpicture_t ;
struct TYPE_28__ {int i_align; scalar_t__ i_x; scalar_t__ i_y; int p_picture; } ;
typedef TYPE_5__ subpicture_region_t ;
struct TYPE_25__ {int color_range; int space; int primaries; int transfer; } ;
struct TYPE_29__ {TYPE_2__ format; TYPE_1__* p; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_30__ {int i_alpha; TYPE_6__* p_pic; } ;
typedef TYPE_7__ logo_t ;
struct TYPE_31__ {scalar_t__ i_next_pic; int i_repeat; scalar_t__ i_counter; int i_alpha; } ;
typedef TYPE_8__ logo_list_t ;
struct TYPE_32__ {TYPE_10__* p_sys; } ;
typedef TYPE_9__ filter_t ;
struct TYPE_23__ {int b_spu_update; int b_absolute; int i_pos; scalar_t__ i_pos_x; scalar_t__ i_pos_y; int lock; TYPE_8__ list; } ;
typedef TYPE_10__ filter_sys_t ;
struct TYPE_24__ {int i_visible_lines; int i_visible_pitch; } ;


 TYPE_7__* LogoListNext (TYPE_8__*,scalar_t__) ;
 int SUBPICTURE_ALIGN_RIGHT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_CODEC_YUVA ;
 size_t Y_PLANE ;
 TYPE_4__* filter_NewSubpicture (TYPE_9__*) ;
 int msg_Err (TYPE_9__*,char*) ;
 int picture_Copy (int ,TYPE_6__*) ;
 int subpicture_Delete (TYPE_4__*) ;
 TYPE_5__* subpicture_region_New (TYPE_3__*) ;
 int video_format_Init (TYPE_3__*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static subpicture_t *FilterSub( filter_t *p_filter, vlc_tick_t date )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    logo_list_t *p_list = &p_sys->list;

    subpicture_t *p_spu;
    subpicture_region_t *p_region;
    video_format_t fmt;
    picture_t *p_pic;
    logo_t *p_logo;

    vlc_mutex_lock( &p_sys->lock );




    if( ( !p_sys->b_spu_update && p_list->i_next_pic > date ) ||
        !p_list->i_repeat )
    {
        vlc_mutex_unlock( &p_sys->lock );
        return ((void*)0);
    }


    p_logo = LogoListNext( p_list, date );
    p_sys->b_spu_update = 0;

    p_pic = p_logo->p_pic;


    p_spu = filter_NewSubpicture( p_filter );
    if( !p_spu )
        goto exit;

    p_spu->b_absolute = p_sys->b_absolute;
    p_spu->i_start = date;
    p_spu->i_stop = 0;
    p_spu->b_ephemer = 1;


    if( p_list->i_repeat != -1 && p_list->i_counter == 0 )
    {
        p_list->i_repeat--;
        if( p_list->i_repeat < 0 )
            goto exit;
    }
    if( !p_pic || !p_logo->i_alpha ||
        ( p_logo->i_alpha == -1 && !p_list->i_alpha ) )
        goto exit;


    video_format_Init( &fmt, VLC_CODEC_YUVA );
    fmt.i_sar_num = fmt.i_sar_den = 1;
    fmt.i_width = fmt.i_visible_width = p_pic->p[Y_PLANE].i_visible_pitch;
    fmt.i_height = fmt.i_visible_height = p_pic->p[Y_PLANE].i_visible_lines;
    fmt.i_x_offset = fmt.i_y_offset = 0;
    fmt.transfer = p_pic->format.transfer;
    fmt.primaries = p_pic->format.primaries;
    fmt.space = p_pic->format.space;
    fmt.color_range = p_pic->format.color_range;
    p_region = subpicture_region_New( &fmt );
    if( !p_region )
    {
        msg_Err( p_filter, "cannot allocate SPU region" );
        subpicture_Delete( p_spu );
        p_spu = ((void*)0);
        goto exit;
    }


    picture_Copy( p_region->p_picture, p_pic );


    if( p_sys->i_pos < 0 )
    {
        p_region->i_align = SUBPICTURE_ALIGN_RIGHT | SUBPICTURE_ALIGN_TOP;
        p_spu->b_absolute = 1;
    }
    else
    {
        p_region->i_align = p_sys->i_pos;
        p_spu->b_absolute = 0;
    }

    p_region->i_x = p_sys->i_pos_x > 0 ? p_sys->i_pos_x : 0;
    p_region->i_y = p_sys->i_pos_y > 0 ? p_sys->i_pos_y : 0;

    p_spu->p_region = p_region;

    p_spu->i_alpha = ( p_logo->i_alpha != -1 ?
                       p_logo->i_alpha : p_list->i_alpha );

exit:
    vlc_mutex_unlock( &p_sys->lock );

    return p_spu;
}
