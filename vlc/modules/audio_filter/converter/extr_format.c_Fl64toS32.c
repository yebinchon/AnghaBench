
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
 int lround (float) ;

__attribute__((used)) static block_t *Fl64toS32(filter_t *filter, block_t *b)
{
    double *src = (double *)b->p_buffer;
    int32_t *dst = (int32_t *)src;
    for (size_t i = b->i_buffer / 8; i--;)
    {
        float s = *(src++) * 2147483648.;
        if (s >= 2147483647.f)
            *(dst++) = 2147483647;
        else
        if (s <= -2147483648.f)
            *(dst++) = -2147483648;
        else
            *(dst++) = lround(s);
    }
    VLC_UNUSED(filter);
    return b;
}
