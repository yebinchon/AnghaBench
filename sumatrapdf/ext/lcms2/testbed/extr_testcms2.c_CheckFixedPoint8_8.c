
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int TestSingleFixed8_8 (double) ;

__attribute__((used)) static
cmsInt32Number CheckFixedPoint8_8(void)
{
    if (!TestSingleFixed8_8(1.0)) return 0;
    if (!TestSingleFixed8_8(2.0)) return 0;
    if (!TestSingleFixed8_8(1.23456)) return 0;
    if (!TestSingleFixed8_8(0.99999)) return 0;
    if (!TestSingleFixed8_8(0.1234567890123456789099999)) return 0;
    if (!TestSingleFixed8_8(+255.1234567890123456789099999)) return 0;

    return 1;
}
