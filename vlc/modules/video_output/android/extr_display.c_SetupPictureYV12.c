
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int i_pitch; int i_lines; int * p_pixels; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_6__ {int i_height; int i_visible_height; int i_chroma; } ;
struct TYPE_8__ {int i_planes; TYPE_1__ format; TYPE_2__* p; } ;
typedef TYPE_3__ picture_t ;


 int ALIGN_16_PIXELS (int) ;
 int VLC_CODEC_YV12 ;
 int memset (int *,int,int) ;
 int picture_SwapUV (TYPE_3__*) ;
 scalar_t__ vlc_fourcc_AreUVPlanesSwapped (int ,int ) ;

__attribute__((used)) static void SetupPictureYV12(picture_t *p_picture, uint32_t i_in_stride)
{

    int i_stride = ALIGN_16_PIXELS(i_in_stride);
    int i_c_stride = ALIGN_16_PIXELS(i_stride / 2);

    p_picture->p->i_pitch = i_stride;


    for (int n = 1; n < p_picture->i_planes; n++)
    {
        const plane_t *o = &p_picture->p[n-1];
        plane_t *p = &p_picture->p[n];

        p->p_pixels = o->p_pixels + o->i_lines * o->i_pitch;
        p->i_pitch = i_c_stride;
        p->i_lines = p_picture->format.i_height / 2;




        int visible_lines = p_picture->format.i_visible_height / 2;
        if (visible_lines < p->i_lines)
            memset(&p->p_pixels[visible_lines * p->i_pitch], 127, (p->i_lines - visible_lines) * p->i_pitch);
    }

    if (vlc_fourcc_AreUVPlanesSwapped(p_picture->format.i_chroma,
                                      VLC_CODEC_YV12))
        picture_SwapUV( p_picture );
}
