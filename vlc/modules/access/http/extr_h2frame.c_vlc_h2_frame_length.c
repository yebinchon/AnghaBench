
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint_fast32_t ;
typedef int uint8_t ;
struct vlc_h2_frame {int* data; } ;



__attribute__((used)) static uint_fast32_t vlc_h2_frame_length(const struct vlc_h2_frame *f)
{
    const uint8_t *buf = f->data;
    return (buf[0] << 16) | (buf[1] << 8) | buf[2];
}
