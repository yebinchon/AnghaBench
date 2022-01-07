
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iRand; } ;
typedef TYPE_1__ testpcache ;



__attribute__((used)) static unsigned testpcacheRandom(testpcache *p){
  unsigned x = 0;
  int i;
  for(i=0; i<4; i++){
    p->iRand = (p->iRand*69069 + 5);
    x = (x<<8) | ((p->iRand>>16)&0xff);
  }
  return x;
}
