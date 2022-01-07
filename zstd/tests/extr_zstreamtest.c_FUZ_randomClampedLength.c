
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;


 scalar_t__ const FUZ_rand (scalar_t__*) ;

__attribute__((used)) static U32 FUZ_randomClampedLength(U32* seed, U32 minVal, U32 maxVal)
{
    U32 const mod = maxVal < minVal ? 1 : (maxVal + 1) - minVal;
    return (U32)((FUZ_rand(seed) % mod) + minVal);
}
