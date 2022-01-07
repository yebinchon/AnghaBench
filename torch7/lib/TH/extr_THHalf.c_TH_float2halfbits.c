
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void TH_float2halfbits(float* src, unsigned short* dest)
{
    unsigned x = *(unsigned*)src;
    unsigned u = (x & 0x7fffffff), remainder, shift, lsb, lsb_s1, lsb_m1;
    unsigned sign, exponent, mantissa;


    if (u > 0x7f800000) {
      *dest = 0x7fffU;
      return ;
    }

    sign = ((x >> 16) & 0x8000);


    if (u > 0x477fefff) {
      *dest = sign | 0x7c00U;
      return;
    }
    if (u < 0x33000001) {
      *dest = (sign | 0x0000);
      return;
    }

    exponent = ((u >> 23) & 0xff);
    mantissa = (u & 0x7fffff);

    if (exponent > 0x70) {
        shift = 13;
        exponent -= 0x70;
    } else {
        shift = 0x7e - exponent;
        exponent = 0;
        mantissa |= 0x800000;
    }
    lsb = (1 << shift);
    lsb_s1 = (lsb >> 1);
    lsb_m1 = (lsb - 1);


    remainder = (mantissa & lsb_m1);
    mantissa >>= shift;
    if (remainder > lsb_s1 || (remainder == lsb_s1 && (mantissa & 0x1))) {
        ++mantissa;
        if (!(mantissa & 0x3ff)) {
            ++exponent;
            mantissa = 0;
        }
    }

    *dest = (sign | (exponent << 10) | mantissa);
}
