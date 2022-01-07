
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void blur_line_c(uint16_t *dc, uint16_t *buf, uint16_t *buf1,
                        uint8_t *src, int sstride, int width)
{
    for( int x = 0; x < width; x++ ) {
        int v = buf1[x] + src[2*x] + src[2*x+1] + src[2*x+sstride] +
                src[2*x+1+sstride];
        int old = buf[x];
        buf[x] = v;
        dc[x] = v - old;
    }
}
