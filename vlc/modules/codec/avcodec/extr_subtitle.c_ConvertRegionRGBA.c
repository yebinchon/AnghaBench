
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ i_width; scalar_t__ i_visible_width; scalar_t__ i_height; scalar_t__ i_visible_height; scalar_t__ i_y_offset; scalar_t__ i_x_offset; int i_chroma; } ;
typedef TYPE_2__ video_format_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int i_align; TYPE_1__* p_picture; int i_y; int i_x; } ;
typedef TYPE_3__ subpicture_region_t ;
struct TYPE_14__ {int* p_pixels; int i_pitch; int i_pixel_pitch; } ;
typedef TYPE_4__ plane_t ;
typedef int fmt ;
struct TYPE_15__ {scalar_t__ w; scalar_t__ h; int** data; int const nb_colors; int y; int x; } ;
struct TYPE_11__ {TYPE_4__* p; } ;
typedef TYPE_5__ AVSubtitleRect ;


 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_CODEC_RGBA ;
 int assert (int) ;
 int memcpy (int*,int*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__* subpicture_region_New (TYPE_2__*) ;

__attribute__((used)) static subpicture_region_t *ConvertRegionRGBA(AVSubtitleRect *ffregion)
{
    if (ffregion->w <= 0 || ffregion->h <= 0)
        return ((void*)0);

    video_format_t fmt;
    memset(&fmt, 0, sizeof(fmt));
    fmt.i_chroma = VLC_CODEC_RGBA;
    fmt.i_width =
    fmt.i_visible_width = ffregion->w;
    fmt.i_height =
    fmt.i_visible_height = ffregion->h;
    fmt.i_x_offset = 0;
    fmt.i_y_offset = 0;

    subpicture_region_t *region = subpicture_region_New(&fmt);
    if (!region)
        return ((void*)0);

    region->i_x = ffregion->x;
    region->i_y = ffregion->y;
    region->i_align = SUBPICTURE_ALIGN_TOP | SUBPICTURE_ALIGN_LEFT;

    const plane_t *p = &region->p_picture->p[0];
    for (int y = 0; y < ffregion->h; y++) {
        for (int x = 0; x < ffregion->w; x++) {

            const uint8_t index = ffregion->data[0][y * ffregion->w+x];
            assert(index < ffregion->nb_colors);

            uint32_t color;
            memcpy(&color, &ffregion->data[1][4*index], 4);

            uint8_t *p_rgba = &p->p_pixels[y * p->i_pitch + x * p->i_pixel_pitch];
            p_rgba[0] = (color >> 16) & 0xff;
            p_rgba[1] = (color >> 8) & 0xff;
            p_rgba[2] = (color >> 0) & 0xff;
            p_rgba[3] = (color >> 24) & 0xff;
        }
    }

    return region;
}
