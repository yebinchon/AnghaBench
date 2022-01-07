
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sintable; int * costable; int * bitReverse; } ;
typedef TYPE_1__ fft_state ;


 unsigned int FFT_BUFFER_SIZE ;
 int PI ;
 int cos (float) ;
 TYPE_1__* malloc (int) ;
 int reverseBits (unsigned int) ;
 int sin (float) ;

fft_state *visual_fft_init(void)
{
    fft_state *p_state;
    unsigned int i;

    p_state = malloc( sizeof(*p_state) );
    if(! p_state )
        return ((void*)0);

    for(i = 0; i < FFT_BUFFER_SIZE; i++)
    {
        p_state->bitReverse[i] = reverseBits(i);
    }
    for(i = 0; i < FFT_BUFFER_SIZE / 2; i++)
    {
        float j = 2 * PI * i / FFT_BUFFER_SIZE;
        p_state->costable[i] = cos(j);
        p_state->sintable[i] = sin(j);
    }

    return p_state;
}
