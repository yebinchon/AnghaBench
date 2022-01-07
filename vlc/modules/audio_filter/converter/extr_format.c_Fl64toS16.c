
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;
 int lround (double const) ;

__attribute__((used)) static block_t *Fl64toS16(filter_t *filter, block_t *b)
{
    VLC_UNUSED(filter);
    double *src = (double *)b->p_buffer;
    int16_t *dst = (int16_t *)src;
    for (size_t i = b->i_buffer / 8; i--;) {
        const double v = *src++ * 32768.;

        if (v >= 32767.)
            *dst++ = 32767;
        else if (v < -32768.)
            *dst++ = -32768;
        else
            *dst++ = lround(v);
    }
    b->i_buffer /= 4;
    return b;
}
