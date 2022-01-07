
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFT_BUFFER_SIZE ;

__attribute__((used)) static void fft_output(const float * re, const float * im, float *output)
{
    float *p_output = output;
    const float *p_real = re;
    const float *p_imag = im;
    float *p_end = output + FFT_BUFFER_SIZE / 2;

    while(p_output <= p_end)
    {
        *p_output = (*p_real * *p_real) + (*p_imag * *p_imag);
        p_output++; p_real++; p_imag++;
    }


    *output /= 4;
    *p_end /= 4;
}
