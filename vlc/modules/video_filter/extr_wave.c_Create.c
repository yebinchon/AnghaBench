
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {scalar_t__ plane_count; } ;
typedef TYPE_3__ vlc_chroma_description_t ;
struct TYPE_8__ {int i_chroma; } ;
struct TYPE_9__ {TYPE_1__ video; } ;
struct TYPE_11__ {int pf_video_filter; TYPE_5__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_12__ {double f_angle; scalar_t__ last_date; } ;
typedef TYPE_5__ filter_sys_t ;


 int Filter ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* vlc_fourcc_GetChromaDescription (int ) ;
 TYPE_5__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    const vlc_chroma_description_t *p_chroma =
        vlc_fourcc_GetChromaDescription( p_filter->fmt_in.video.i_chroma );
    if( p_chroma == ((void*)0) || p_chroma->plane_count == 0 )
        return VLC_EGENERIC;


    filter_sys_t *p_sys = p_filter->p_sys =
        vlc_obj_malloc( p_this, sizeof(*p_sys) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_filter->pf_video_filter = Filter;

    p_sys->f_angle = 0.0;
    p_sys->last_date = 0;

    return VLC_SUCCESS;
}
