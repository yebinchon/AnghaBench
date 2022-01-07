
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int FFMAX (int ,int) ;
 int abs (int) ;
 int av_clip_uint8 (int) ;

__attribute__((used)) static void filter_line_c(uint8_t *dst, uint8_t *src, uint16_t *dc,
                          int width, int thresh, const uint16_t *dithers)
{
    for( int x = 0; x < width; x++, dc += x&1 ) {
        int pix = src[x]<<7;
        int delta = dc[0] - pix;
        int m = abs(delta) * thresh >> 16;
        m = FFMAX(0, 127-m);
        m = m*m*delta >> 14;
        pix += m + dithers[x&7];
        dst[x] = av_clip_uint8(pix>>7);
    }
}
