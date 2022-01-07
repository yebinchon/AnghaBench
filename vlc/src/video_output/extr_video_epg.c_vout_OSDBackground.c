
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int i_entries; } ;
typedef TYPE_2__ video_palette_t ;
struct TYPE_12__ {int i_width; int i_visible_width; int i_height; int i_visible_height; int i_sar_num; int i_sar_den; TYPE_2__* p_palette; } ;
typedef TYPE_3__ video_format_t ;
typedef int uint32_t ;
struct TYPE_13__ {int i_align; int i_x; int i_y; TYPE_1__* p_picture; } ;
typedef TYPE_4__ subpicture_region_t ;
struct TYPE_10__ {int p; } ;


 int GRADIENT_COLORS ;
 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_CODEC_YUVP ;
 int spuregion_CreateVGradientFill (int ,int ) ;
 int spuregion_CreateVGradientPalette (TYPE_2__*,int ,int ,int) ;
 TYPE_4__* subpicture_region_New (TYPE_3__*) ;
 int video_format_Init (TYPE_3__*,int ) ;

__attribute__((used)) static subpicture_region_t * vout_OSDBackground(int x, int y,
                                                int width, int height,
                                                uint32_t i_argb)
{

    video_palette_t palette;
    spuregion_CreateVGradientPalette( &palette, GRADIENT_COLORS, i_argb, 0xFF000000 );

    video_format_t fmt;
    video_format_Init(&fmt, VLC_CODEC_YUVP);
    fmt.i_width = fmt.i_visible_width = width;
    fmt.i_height = fmt.i_visible_height = height;
    fmt.i_sar_num = 1;
    fmt.i_sar_den = 1;
    fmt.p_palette = &palette;

    subpicture_region_t *region = subpicture_region_New(&fmt);
    if (!region)
        return ((void*)0);

    region->i_align = SUBPICTURE_ALIGN_LEFT | SUBPICTURE_ALIGN_TOP;
    region->i_x = x;
    region->i_y = y;

    spuregion_CreateVGradientFill( region->p_picture->p, palette.i_entries );

    return region;
}
