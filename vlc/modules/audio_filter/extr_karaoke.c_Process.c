
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int filter_t ;
struct TYPE_4__ {unsigned int i_nb_samples; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static block_t *Process (filter_t *filter, block_t *block)
{
    const float factor = .70710678 ;
    float *spl = (float *)block->p_buffer;

    for (unsigned i = block->i_nb_samples; i > 0; i--)
    {
        float s = (spl[0] - spl[1]) * factor;

        *(spl++) = s;
        *(spl++) = s;

    }
    (void) filter;
    return block;
}
