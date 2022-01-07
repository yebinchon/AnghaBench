
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aRand3; scalar_t__ aRand2; scalar_t__ aRand1; } ;


 TYPE_1__ r ;
 int randomBlob (int,unsigned char*) ;

int testPrngInit(void){
  randomBlob(sizeof(r.aRand1), (unsigned char *)r.aRand1);
  randomBlob(sizeof(r.aRand2), (unsigned char *)r.aRand2);
  randomBlob(sizeof(r.aRand3), (unsigned char *)r.aRand3);
  return 0;
}
