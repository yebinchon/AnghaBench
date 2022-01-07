
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int filter_t ;
struct TYPE_4__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static block_t *Fl64toFl32(filter_t *filter, block_t *b)
{
    double *src = (double *)b->p_buffer;
    float *dst = (float *)src;
    for (size_t i = b->i_buffer / 8; i--;)
        *(dst++) = *(src++);

    VLC_UNUSED(filter);
    return b;
}
