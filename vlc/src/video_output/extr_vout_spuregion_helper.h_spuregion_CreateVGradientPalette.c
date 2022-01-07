
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_entries; int * palette; } ;
typedef TYPE_1__ video_palette_t ;
typedef int uint8_t ;
typedef int uint32_t ;


 int RGB2YUV (int,int,int) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static inline void
spuregion_CreateVGradientPalette( video_palette_t *p_palette, uint8_t i_splits,
                                  uint32_t argb1, uint32_t argb2 )
{
    for( uint8_t i = 0; i<i_splits; i++ )
    {
        uint32_t rgb1 = argb1 & 0x00FFFFFF;
        uint32_t rgb2 = argb2 & 0x00FFFFFF;

        uint32_t r = ((((rgb1 >> 16) * (i_splits - i)) + (rgb2 >> 16) * i)) / i_splits;
        uint32_t g = (((((rgb1 >> 8) & 0xFF) * (i_splits - i)) + ((rgb2 >> 8) & 0xFF) * i)) / i_splits;
        uint32_t b = ((((rgb1 & 0xFF) * (i_splits - i)) + (rgb2 & 0xFF) * i)) / i_splits;
        uint8_t entry[4] = { RGB2YUV( r,g,b ), argb1 >> 24 };
        memcpy( p_palette->palette[i], entry, 4 );
    }
    p_palette->i_entries = i_splits;
}
