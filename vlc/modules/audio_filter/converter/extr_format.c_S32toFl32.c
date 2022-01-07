
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static block_t *S32toFl32(filter_t *filter, block_t *b)
{
    VLC_UNUSED(filter);
    int32_t *src = (int32_t*)b->p_buffer;
    float *dst = (float *)src;
    for (int i = b->i_buffer / 4; i--;)
        *dst++ = (float)(*src++) / 2147483648.f;
    return b;
}
