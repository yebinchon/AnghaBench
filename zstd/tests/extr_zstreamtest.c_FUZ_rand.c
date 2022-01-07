
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int FUZ_rotl32 (int,int) ;
 int prime32 ;

__attribute__((used)) static U32 FUZ_rand(U32* seedPtr)
{
    static const U32 prime2 = 2246822519U;
    U32 rand32 = *seedPtr;
    rand32 *= prime32;
    rand32 += prime2;
    rand32 = FUZ_rotl32(rand32, 13);
    *seedPtr = rand32;
    return rand32 >> 5;
}
