
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nData; int nUs; int iOff; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,int ,scalar_t__,int ) ;
 TYPE_1__ prev ;

__attribute__((used)) static void flushPrev(FILE *pOut){
  if( prev.nData ){
    fprintf(pOut, "w %s %lld %d %d\n", "d", prev.iOff, prev.nData, prev.nUs);
    prev.nData = 0;
  }
}
