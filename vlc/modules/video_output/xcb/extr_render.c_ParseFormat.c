
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_7__ {int red_mask; int green_mask; int blue_mask; int alpha_mask; int red_shift; int green_shift; int blue_shift; } ;
struct TYPE_6__ {scalar_t__ type; int depth; TYPE_2__ direct; } ;
typedef TYPE_1__ xcb_render_pictforminfo_t ;
typedef TYPE_2__ xcb_render_directformat_t ;
struct TYPE_8__ {int bits_per_pixel; } ;
typedef TYPE_3__ xcb_format_t ;
typedef int vlc_fourcc_t ;
typedef int uint_fast8_t ;


 int VLC_CODEC_ARGB ;
 int VLC_CODEC_BGRA ;
 int VLC_CODEC_RGB15 ;
 int VLC_CODEC_RGB16 ;
 int VLC_CODEC_RGB24 ;
 int VLC_CODEC_RGB32 ;
 int VLC_CODEC_RGBA ;
 scalar_t__ XCB_RENDER_PICT_TYPE_DIRECT ;
 scalar_t__ unlikely (int ) ;
 TYPE_3__* vlc_xcb_DepthToPixmapFormat (int const*,int) ;

__attribute__((used)) static vlc_fourcc_t ParseFormat(const xcb_setup_t *setup,
                                const xcb_render_pictforminfo_t *pfi)
{
    if (pfi->type != XCB_RENDER_PICT_TYPE_DIRECT)
        return 0;

    const xcb_format_t *pixfmt = vlc_xcb_DepthToPixmapFormat(setup,
                                                             pfi->depth);
    if (unlikely(pixfmt == ((void*)0)))
        return 0;

    const uint_fast8_t bpp = pixfmt->bits_per_pixel;
    const xcb_render_directformat_t *d = &pfi->direct;

    switch (pfi->depth) {
        case 32:
            if (bpp == 32 && d->red_mask == 0xff && d->green_mask == 0xff
             && d->blue_mask == 0xff && d->alpha_mask == 0xff) {
                if (d->red_shift == 0 && d->green_shift == 8
                 && d->blue_shift == 16)
                    return VLC_CODEC_RGBA;
                if (d->red_shift == 16 && d->green_shift == 8
                 && d->blue_shift == 0)
                    return VLC_CODEC_BGRA;
                if (d->red_shift == 8 && d->green_shift == 16
                 && d->blue_shift == 24)
                    return VLC_CODEC_ARGB;

            }
            break;

        case 24:
            if (bpp == 32 && d->red_mask == 0xff && d->green_mask == 0xff
             && d->blue_mask == 0xff && d->alpha_mask == 0x00)
                return VLC_CODEC_RGB32;
            if (bpp == 24 && d->red_mask == 0xff && d->green_mask == 0xff
             && d->blue_mask == 0xff && d->alpha_mask == 0x00)
                return VLC_CODEC_RGB24;
            break;
        case 16:
            if (bpp == 16 && d->red_mask == 0x1f && d->green_mask == 0x3f
             && d->blue_mask == 0x1f && d->alpha_mask == 0x00)
                return VLC_CODEC_RGB16;
            break;
        case 15:
            if (bpp == 16 && d->red_mask == 0x1f && d->green_mask == 0x1f
             && d->blue_mask == 0x1f && d->alpha_mask == 0x00)
                return VLC_CODEC_RGB15;
            break;
    }

    return 0;
}
