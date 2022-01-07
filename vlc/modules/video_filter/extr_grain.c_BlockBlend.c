
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ int16_t ;


 int BANK_SIZE ;
 scalar_t__ clip_uint8_vlc (scalar_t__ const) ;

__attribute__((used)) static void BlockBlend(uint8_t *dst, size_t dst_pitch,
                       const uint8_t *src, size_t src_pitch,
                       const int16_t *noise,
                       int w, int h)
{
    for (int y = 0; y < h; y++) {
        for (int x = 0; x < w; x++) {
            dst[y * dst_pitch + x] =
                clip_uint8_vlc(src[y * src_pitch + x] + noise[y * BANK_SIZE +x]);
        }
    }
}
