
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nTempReg; int* aTempReg; } ;
typedef TYPE_1__ Parse ;


 scalar_t__ ArraySize (int*) ;

void sqlite3ReleaseTempReg(Parse *pParse, int iReg){
  if( iReg && pParse->nTempReg<ArraySize(pParse->aTempReg) ){
    pParse->aTempReg[pParse->nTempReg++] = iReg;
  }
}
