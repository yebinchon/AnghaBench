
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* aPage; } ;
typedef TYPE_1__ GState ;



__attribute__((used)) static int ofst4byte(GState *p, int ofst){
  int x = p->aPage[ofst];
  x = (x<<8) + p->aPage[ofst+1];
  x = (x<<8) + p->aPage[ofst+2];
  x = (x<<8) + p->aPage[ofst+3];
  return x;
}
