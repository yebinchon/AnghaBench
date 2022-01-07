
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WhereInfo ;
struct TYPE_3__ {int aStatic; int a; int nSlot; scalar_t__ nTerm; scalar_t__ pOuter; scalar_t__ hasOr; int * pWInfo; } ;
typedef TYPE_1__ WhereClause ;


 int ArraySize (int ) ;

void sqlite3WhereClauseInit(
  WhereClause *pWC,
  WhereInfo *pWInfo
){
  pWC->pWInfo = pWInfo;
  pWC->hasOr = 0;
  pWC->pOuter = 0;
  pWC->nTerm = 0;
  pWC->nSlot = ArraySize(pWC->aStatic);
  pWC->a = pWC->aStatic;
}
