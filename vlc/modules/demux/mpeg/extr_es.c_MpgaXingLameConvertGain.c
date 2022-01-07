
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static double MpgaXingLameConvertGain( uint16_t x )
{
    double gain = (x & 0x1FF) / 10.0;

    return x & 0x200 ? -gain : gain;
}
