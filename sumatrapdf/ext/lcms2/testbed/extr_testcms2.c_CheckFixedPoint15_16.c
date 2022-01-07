
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int TestSingleFixed15_16 (double) ;

__attribute__((used)) static
cmsInt32Number CheckFixedPoint15_16(void)
{
    if (!TestSingleFixed15_16(1.0)) return 0;
    if (!TestSingleFixed15_16(2.0)) return 0;
    if (!TestSingleFixed15_16(1.23456)) return 0;
    if (!TestSingleFixed15_16(0.99999)) return 0;
    if (!TestSingleFixed15_16(0.1234567890123456789099999)) return 0;
    if (!TestSingleFixed15_16(-1.0)) return 0;
    if (!TestSingleFixed15_16(-2.0)) return 0;
    if (!TestSingleFixed15_16(-1.23456)) return 0;
    if (!TestSingleFixed15_16(-1.1234567890123456789099999)) return 0;
    if (!TestSingleFixed15_16(+32767.1234567890123456789099999)) return 0;
    if (!TestSingleFixed15_16(-32767.1234567890123456789099999)) return 0;
    return 1;
}
