
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_10__ {int i_planes; TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
typedef int copy_cache_t ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_9__ {int i_pitch; int i_visible_pitch; int i_visible_lines; int const* p_pixels; } ;
typedef TYPE_3__ ArchitectureSpecificCopyData ;


 int Copy420_SP_to_P (TYPE_2__*,int const**,size_t const*,int,int *) ;
 int OMX_COLOR_FormatYUV420SemiPlanar ;
 int QOMX_COLOR_FormatYUV420PackedSemiPlanar64x32Tile2m8ka ;
 int memcpy (int const*,int const*,int) ;
 int picture_SwapUV (TYPE_2__*) ;
 int qcom_convert (int const*,TYPE_2__*) ;
 scalar_t__ vlc_CPU_SSE2 () ;

void CopyOmxPicture( int i_color_format, picture_t *p_pic,
                     int i_slice_height,
                     int i_src_stride, uint8_t *p_src, int i_chroma_div,
                     ArchitectureSpecificCopyData *p_architecture_specific )
{
    uint8_t *p_dst;
    int i_dst_stride;
    int i_plane, i_width, i_line;
    if( i_color_format == QOMX_COLOR_FormatYUV420PackedSemiPlanar64x32Tile2m8ka )
    {
        qcom_convert(p_src, p_pic);
        return;
    }
    for( i_plane = 0; i_plane < p_pic->i_planes; i_plane++ )
    {
        if(i_plane == 1) i_src_stride /= i_chroma_div;
        p_dst = p_pic->p[i_plane].p_pixels;
        i_dst_stride = p_pic->p[i_plane].i_pitch;
        i_width = p_pic->p[i_plane].i_visible_pitch;

        for( i_line = 0; i_line < p_pic->p[i_plane].i_visible_lines; i_line++ )
        {
            memcpy( p_dst, p_src, i_width );
            p_src += i_src_stride;
            p_dst += i_dst_stride;
        }



        if( i_plane == 0 && i_slice_height > p_pic->p[i_plane].i_visible_lines )
            p_src += i_src_stride * (i_slice_height - p_pic->p[i_plane].i_visible_lines);
        else if ( i_plane > 0 && i_slice_height/2 > p_pic->p[i_plane].i_visible_lines )
            p_src += i_src_stride * (i_slice_height/2 - p_pic->p[i_plane].i_visible_lines);
    }
}
