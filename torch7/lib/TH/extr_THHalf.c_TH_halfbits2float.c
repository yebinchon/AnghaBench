
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void TH_halfbits2float(unsigned short* src, float* res)
{
    unsigned h = *src;
    unsigned sign = ((h >> 15) & 1);
    unsigned exponent = ((h >> 10) & 0x1f);
    unsigned mantissa = ((h & 0x3ff) << 13);

    if (exponent == 0x1f) {
        mantissa = (mantissa ? (sign = 0, 0x7fffff) : 0);
        exponent = 0xff;
    } else if (!exponent) {
        if (mantissa) {
            unsigned int msb;
            exponent = 0x71;
            do {
                msb = (mantissa & 0x400000);
                mantissa <<= 1;
                --exponent;
            } while (!msb);
            mantissa &= 0x7fffff;
        }
    } else {
        exponent += 0x70;
    }

    *(unsigned*)res = ((sign << 31) | (exponent << 23) | mantissa);
}
