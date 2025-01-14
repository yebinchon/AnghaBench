
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {unsigned int i_pitch; scalar_t__ i_lines; scalar_t__ i_visible_pitch; scalar_t__ i_visible_lines; int * p_pixels; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_6__ {scalar_t__ i_height; scalar_t__ i_chroma; } ;
struct TYPE_8__ {int i_planes; TYPE_1__ format; TYPE_2__* p; } ;
typedef TYPE_3__ picture_t ;


 scalar_t__ VLC_CODEC_I420 ;
 scalar_t__ VLC_CODEC_J420 ;
 scalar_t__ VLC_CODEC_NV12 ;
 scalar_t__ VLC_CODEC_NV21 ;
 scalar_t__ VLC_CODEC_P010 ;
 scalar_t__ VLC_CODEC_YV12 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int picture_SwapUV (TYPE_3__*) ;
 scalar_t__ vlc_fourcc_AreUVPlanesSwapped (scalar_t__,scalar_t__) ;

int picture_UpdatePlanes(picture_t *picture, uint8_t *data, unsigned pitch)
{

    picture->p->p_pixels = data;
    picture->p->i_pitch = pitch;
    picture->p->i_lines = picture->format.i_height;
    assert(picture->p->i_visible_pitch <= picture->p->i_pitch);
    assert(picture->p->i_visible_lines <= picture->p->i_lines);


    if (picture->format.i_chroma == VLC_CODEC_NV12 ||
        picture->format.i_chroma == VLC_CODEC_NV21 ||
        picture->format.i_chroma == VLC_CODEC_P010) {

        for (int n = 1; n < picture->i_planes; n++) {
            const plane_t *o = &picture->p[n-1];
            plane_t *p = &picture->p[n];

            p->p_pixels = o->p_pixels + o->i_lines * o->i_pitch;
            p->i_pitch = pitch;
            p->i_lines = picture->format.i_height / 2;
            assert(p->i_visible_pitch <= p->i_pitch);
            assert(p->i_visible_lines <= p->i_lines);
        }

        if (vlc_fourcc_AreUVPlanesSwapped(picture->format.i_chroma, VLC_CODEC_NV12)) {

            return VLC_EGENERIC;
        }
    }


    else
    if (picture->format.i_chroma == VLC_CODEC_I420 ||
        picture->format.i_chroma == VLC_CODEC_J420 ||
        picture->format.i_chroma == VLC_CODEC_YV12) {

        for (int n = 1; n < picture->i_planes; n++) {
            const plane_t *o = &picture->p[n-1];
            plane_t *p = &picture->p[n];

            p->p_pixels = o->p_pixels + o->i_lines * o->i_pitch;
            p->i_pitch = pitch / 2;
            p->i_lines = picture->format.i_height / 2;
        }

        if (vlc_fourcc_AreUVPlanesSwapped(picture->format.i_chroma, VLC_CODEC_YV12))
            picture_SwapUV( picture );
    }
    return VLC_SUCCESS;
}
