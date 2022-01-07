
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong32 ;


 int* Te4_0 ;
 int* Te4_1 ;
 int* Te4_2 ;
 int* Te4_3 ;
 size_t byte (int,int) ;

__attribute__((used)) static ulong32 setup_mix(ulong32 temp)
{
   return (Te4_3[byte(temp, 2)]) ^
          (Te4_2[byte(temp, 1)]) ^
          (Te4_1[byte(temp, 0)]) ^
          (Te4_0[byte(temp, 3)]);
}
