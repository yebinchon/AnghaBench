
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sound_sample ;


 unsigned int FFT_BUFFER_SIZE ;

__attribute__((used)) static void fft_prepare( const sound_sample *input, float * re, float * im,
                         const unsigned int *bitReverse ) {
    unsigned int i;
    float *p_real = re;
    float *p_imag = im;


    for(i = 0; i < FFT_BUFFER_SIZE; i++)
    {
        *p_real++ = input[bitReverse[i]];
        *p_imag++ = 0;
    }
}
