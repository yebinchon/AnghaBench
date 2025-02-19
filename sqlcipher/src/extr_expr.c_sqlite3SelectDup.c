
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {int selFlags; int* addrOpenEphm; struct TYPE_6__* pPrior; int selId; scalar_t__ pWin; int pWinDefn; int pWith; int nSelectRow; scalar_t__ iOffset; scalar_t__ iLimit; void* pLimit; struct TYPE_6__* pNext; int op; void* pOrderBy; void* pHaving; void* pGroupBy; void* pWhere; int pSrc; void* pEList; } ;
typedef TYPE_1__ Select ;


 int SF_UsesEphemeral ;
 int assert (int) ;
 int gatherSelectWindows (TYPE_1__*) ;
 TYPE_1__* sqlite3DbMallocRawNN (int *,int) ;
 void* sqlite3ExprDup (int *,void*,int) ;
 void* sqlite3ExprListDup (int *,void*,int) ;
 int sqlite3SrcListDup (int *,int ,int) ;
 int sqlite3WindowListDup (int *,int ) ;
 int withDup (int *,int ) ;

Select *sqlite3SelectDup(sqlite3 *db, Select *pDup, int flags){
  Select *pRet = 0;
  Select *pNext = 0;
  Select **pp = &pRet;
  Select *p;

  assert( db!=0 );
  for(p=pDup; p; p=p->pPrior){
    Select *pNew = sqlite3DbMallocRawNN(db, sizeof(*p) );
    if( pNew==0 ) break;
    pNew->pEList = sqlite3ExprListDup(db, p->pEList, flags);
    pNew->pSrc = sqlite3SrcListDup(db, p->pSrc, flags);
    pNew->pWhere = sqlite3ExprDup(db, p->pWhere, flags);
    pNew->pGroupBy = sqlite3ExprListDup(db, p->pGroupBy, flags);
    pNew->pHaving = sqlite3ExprDup(db, p->pHaving, flags);
    pNew->pOrderBy = sqlite3ExprListDup(db, p->pOrderBy, flags);
    pNew->op = p->op;
    pNew->pNext = pNext;
    pNew->pPrior = 0;
    pNew->pLimit = sqlite3ExprDup(db, p->pLimit, flags);
    pNew->iLimit = 0;
    pNew->iOffset = 0;
    pNew->selFlags = p->selFlags & ~SF_UsesEphemeral;
    pNew->addrOpenEphm[0] = -1;
    pNew->addrOpenEphm[1] = -1;
    pNew->nSelectRow = p->nSelectRow;
    pNew->pWith = withDup(db, p->pWith);

    pNew->pWin = 0;
    pNew->pWinDefn = sqlite3WindowListDup(db, p->pWinDefn);
    if( p->pWin ) gatherSelectWindows(pNew);

    pNew->selId = p->selId;
    *pp = pNew;
    pp = &pNew->pPrior;
    pNext = pNew;
  }

  return pRet;
}
