
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sound_sample ;
struct TYPE_3__ {int imag; int real; int sintable; int costable; int bitReverse; } ;
typedef TYPE_1__ fft_state ;


 int fft_calculate (int ,int ,int ,int ) ;
 int fft_output (int ,int ,float*) ;
 int fft_prepare (int const*,int ,int ,int ) ;

void fft_perform(const sound_sample *input, float *output, fft_state *state) {

    fft_prepare(input, state->real, state->imag, state->bitReverse );


    fft_calculate(state->real, state->imag, state->costable, state->sintable);


    fft_output(state->real, state->imag, output);
}
