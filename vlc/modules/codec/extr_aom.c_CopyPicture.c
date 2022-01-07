
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct aom_image {int * stride; int * planes; } ;
struct TYPE_6__ {int i_pitch; int p_pixels; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_7__ {int i_planes; TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;


 int plane_CopyPixels (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void CopyPicture(const struct aom_image *img, picture_t *pic)
{
    for (int plane = 0; plane < pic->i_planes; plane++ ) {
        plane_t src_plane = pic->p[plane];
        src_plane.p_pixels = img->planes[plane];
        src_plane.i_pitch = img->stride[plane];
        plane_CopyPixels(&pic->p[plane], &src_plane);
    }
}
