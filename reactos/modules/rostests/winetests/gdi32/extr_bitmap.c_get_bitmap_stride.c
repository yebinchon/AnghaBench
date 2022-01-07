
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_bitmap_stride( int width, int bpp )
{
    return ((width * bpp + 15) >> 3) & ~1;
}
