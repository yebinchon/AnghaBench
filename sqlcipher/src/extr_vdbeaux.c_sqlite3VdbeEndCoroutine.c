
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pParse; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_5__ {scalar_t__ nRangeReg; scalar_t__ nTempReg; } ;


 int OP_EndCoroutine ;
 int sqlite3VdbeAddOp1 (TYPE_2__*,int ,int) ;

void sqlite3VdbeEndCoroutine(Vdbe *v, int regYield){
  sqlite3VdbeAddOp1(v, OP_EndCoroutine, regYield);







  v->pParse->nTempReg = 0;
  v->pParse->nRangeReg = 0;
}
