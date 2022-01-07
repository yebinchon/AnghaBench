
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static block_t *S16toU8(filter_t *filter, block_t *b)
{
    VLC_UNUSED(filter);
    int16_t *src = (int16_t *)b->p_buffer;
    uint8_t *dst = (uint8_t *)src;
    for (size_t i = b->i_buffer / 2; i--;)
        *dst++ = ((*src++) + 32768) >> 8;

    b->i_buffer /= 2;
    return b;
}
