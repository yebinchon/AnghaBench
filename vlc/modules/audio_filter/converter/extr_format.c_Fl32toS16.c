
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;
 int lroundf (float) ;

__attribute__((used)) static block_t *Fl32toS16(filter_t *filter, block_t *b)
{
    VLC_UNUSED(filter);
    float *src = (float *)b->p_buffer;
    int16_t *dst = (int16_t *)src;
    for (int i = b->i_buffer / 4; i--;) {
        union { float f; int32_t i; } u;
        u.f = *src++ + 384.f;
        if (u.i > 0x43c07fff)
            *dst++ = 32767;
        else if (u.i < 0x43bf8000)
            *dst++ = -32768;
        else
            *dst++ = u.i - 0x43c00000;

    }
    b->i_buffer /= 2;
    return b;
}
