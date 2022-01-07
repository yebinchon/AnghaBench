
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* aRand1; unsigned int* aRand2; unsigned int* aRand3; } ;


 TYPE_1__ r ;

unsigned int testPrngValue(unsigned int iVal){
  return
    r.aRand1[iVal & 0x000007FF] ^
    r.aRand2[(iVal>>11) & 0x000007FF] ^
    r.aRand3[(iVal>>22) & 0x000003FF]
  ;
}
