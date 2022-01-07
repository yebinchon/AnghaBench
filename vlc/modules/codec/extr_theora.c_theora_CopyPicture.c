
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* th_ycbcr_buffer ;
struct TYPE_8__ {int i_lines; int i_visible_lines; int i_pitch; int i_visible_pitch; int p_pixels; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_9__ {int * p; int i_planes; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_7__ {int stride; int data; int height; } ;


 int __MIN (int ,int) ;
 int plane_CopyPixels (int *,TYPE_2__*) ;

__attribute__((used)) static void theora_CopyPicture( picture_t *p_pic,
                                th_ycbcr_buffer ycbcr )
{
    int i_plane, i_planes;
    i_planes = __MIN(p_pic->i_planes, 3);
    for( i_plane = 0; i_plane < i_planes; i_plane++ )
    {
        plane_t src;
        src.i_lines = ycbcr[i_plane].height;
        src.p_pixels = ycbcr[i_plane].data;
        src.i_pitch = ycbcr[i_plane].stride;
        src.i_visible_pitch = src.i_pitch;
        src.i_visible_lines = src.i_lines;
        plane_CopyPixels( &p_pic->p[i_plane], &src );
    }
}
