
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iCoef1; int iCoef2; } ;
typedef TYPE_1__ ADPCMCOEFSET ;


 int* MS_Delta ;
 int clamp_sample (int*) ;

__attribute__((used)) static inline void process_nibble(unsigned nibble, int* idelta,
                                  int* sample1, int* sample2,
                                  const ADPCMCOEFSET* coeff)
{
    int sample;
    int snibble;


    snibble = (nibble & 0x08) ? (nibble - 16) : nibble;
    sample = ((*sample1 * coeff->iCoef1) + (*sample2 * coeff->iCoef2)) / 256 +
        snibble * *idelta;
    clamp_sample(&sample);

    *sample2 = *sample1;
    *sample1 = sample;
    *idelta = ((MS_Delta[nibble] * *idelta) / 256);
    if (*idelta < 16) *idelta = 16;
}
