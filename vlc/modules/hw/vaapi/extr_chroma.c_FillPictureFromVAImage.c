
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_11__ {int i_chroma; } ;
struct TYPE_12__ {TYPE_2__ format; } ;
typedef TYPE_3__ picture_t ;
typedef int copy_cache_t ;
struct TYPE_10__ {int fourcc; } ;
struct TYPE_13__ {size_t const* pitches; int height; TYPE_1__ format; int * offsets; } ;
typedef TYPE_4__ VAImage ;


 int Copy420_16_SP_to_P (TYPE_3__*,int const**,size_t const*,int ,int,int *) ;
 int Copy420_SP_to_P (TYPE_3__*,int const**,size_t const*,int ,int *) ;
 int Copy420_SP_to_SP (TYPE_3__*,int const**,size_t const*,int ,int *) ;


 int VLC_CODEC_I420 ;


 int assert (int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static inline void
FillPictureFromVAImage(picture_t *dest,
                       VAImage *src_img, uint8_t *src_buf, copy_cache_t *cache)
{
    const uint8_t * src_planes[2] = { src_buf + src_img->offsets[0],
                                      src_buf + src_img->offsets[1] };
    const size_t src_pitches[2] = { src_img->pitches[0],
                                       src_img->pitches[1] };

    switch (src_img->format.fourcc)
    {
    case 131:
    {
        assert(dest->format.i_chroma == VLC_CODEC_I420);
        Copy420_SP_to_P(dest, src_planes, src_pitches, src_img->height, cache);
        break;
    }
    case 130:
        switch (dest->format.i_chroma)
        {
            case 128:
                Copy420_SP_to_SP(dest, src_planes, src_pitches, src_img->height,
                                 cache);
                break;
            case 129:
                Copy420_16_SP_to_P(dest, src_planes, src_pitches,
                                   src_img->height, 6, cache);
                break;
            default:
                vlc_assert_unreachable();
        }
        break;
    default:
        vlc_assert_unreachable();
        break;
    }
}
