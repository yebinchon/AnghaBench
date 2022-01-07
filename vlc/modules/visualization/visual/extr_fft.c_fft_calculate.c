
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFT_BUFFER_SIZE ;
 unsigned int FFT_BUFFER_SIZE_LOG ;

__attribute__((used)) static void fft_calculate(float * re, float * im, const float *costable, const float *sintable )
{
    unsigned int i, j, k;
    unsigned int exchanges;
    float fact_real, fact_imag;
    float tmp_real, tmp_imag;
    unsigned int factfact;


    exchanges = 1;
    factfact = FFT_BUFFER_SIZE / 2;


    for(i = FFT_BUFFER_SIZE_LOG; i != 0; i--) {




        for(j = 0; j != exchanges; j++) {





            fact_real = costable[j * factfact];
            fact_imag = sintable[j * factfact];


            for(k = j; k < FFT_BUFFER_SIZE; k += exchanges << 1) {
                int k1 = k + exchanges;
                tmp_real = fact_real * re[k1] - fact_imag * im[k1];
                tmp_imag = fact_real * im[k1] + fact_imag * re[k1];
                re[k1] = re[k] - tmp_real;
                im[k1] = im[k] - tmp_imag;
                re[k] += tmp_real;
                im[k] += tmp_imag;
            }
        }
        exchanges <<= 1;
        factfact >>= 1;
    }
}
