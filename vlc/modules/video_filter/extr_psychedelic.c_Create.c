
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
struct TYPE_11__ {int plane_count; int pixel_size; } ;
typedef TYPE_3__ vlc_chroma_description_t ;
struct TYPE_9__ {int i_chroma; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_12__ {int pf_video_filter; TYPE_5__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_13__ {int x; int y; int scale; int xinc; int yinc; int scaleinc; int * p_image; scalar_t__ v; scalar_t__ u; } ;
typedef TYPE_5__ filter_sys_t ;


 int Filter ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_5__* malloc (int) ;
 int msg_Err (TYPE_4__*,char*,char*) ;
 TYPE_3__* vlc_fourcc_GetChromaDescription (int const) ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    const vlc_fourcc_t fourcc = p_filter->fmt_in.video.i_chroma;
    const vlc_chroma_description_t *p_chroma = vlc_fourcc_GetChromaDescription( fourcc );
    if( !p_chroma || p_chroma->plane_count != 3 || p_chroma->pixel_size != 1 ) {
        msg_Err( p_filter, "Unsupported chroma (%4.4s)", (char*)&fourcc );
        return VLC_EGENERIC;
    }


    filter_sys_t *p_sys = malloc( sizeof( filter_sys_t ) );
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;
    p_filter->p_sys = p_sys;

    p_filter->pf_video_filter = Filter;

    p_sys->x = 10;
    p_sys->y = 10;
    p_sys->scale = 1;
    p_sys->xinc = 1;
    p_sys->yinc = 1;
    p_sys->scaleinc = 1;
    p_sys->u = 0;
    p_sys->v = 0;
    p_sys->p_image = ((void*)0);

    return VLC_SUCCESS;
}
