
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_21__ {int i_planes; TYPE_1__* p; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_19__ {int i_height; int i_width; } ;
struct TYPE_20__ {TYPE_2__ video; } ;
struct TYPE_22__ {TYPE_3__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_23__ {int lock; int pp_context; int * pp_mode; } ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_18__ {int i_pitch; int * p_pixels; } ;


 TYPE_4__* CopyInfoAndRelease (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* filter_NewPicture (TYPE_5__*) ;
 int picture_CopyPixels (TYPE_4__*,TYPE_4__*) ;
 int picture_Release (TYPE_4__*) ;
 int pp_postprocess (int const**,int*,int **,int*,int ,int ,int *,int ,int *,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static picture_t *PostprocPict( filter_t *p_filter, picture_t *p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    picture_t *p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }


    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->pp_mode != ((void*)0) )
    {
        const uint8_t *src[3];
        uint8_t *dst[3];
        int i_src_stride[3], i_dst_stride[3];

        for( int i_plane = 0; i_plane < p_pic->i_planes; i_plane++ )
        {
            src[i_plane] = p_pic->p[i_plane].p_pixels;
            dst[i_plane] = p_outpic->p[i_plane].p_pixels;



            i_src_stride[i_plane] = p_pic->p[i_plane].i_pitch;
            i_dst_stride[i_plane] = p_outpic->p[i_plane].i_pitch;
        }

        pp_postprocess( src, i_src_stride, dst, i_dst_stride,
                        p_filter->fmt_in.video.i_width,
                        p_filter->fmt_in.video.i_height, ((void*)0), 0,
                        p_sys->pp_mode, p_sys->pp_context, 0 );
    }
    else
        picture_CopyPixels( p_outpic, p_pic );
    vlc_mutex_unlock( &p_sys->lock );

    return CopyInfoAndRelease( p_outpic, p_pic );
}
