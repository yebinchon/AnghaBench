
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3expert ;
struct TYPE_11__ {struct TYPE_11__* pLink; struct TYPE_11__* pNext; } ;
struct TYPE_10__ {TYPE_2__* pRange; TYPE_2__* pEq; } ;
typedef TYPE_1__ IdxScan ;
typedef TYPE_2__ IdxConstraint ;


 int SQLITE_OK ;
 int assert (int) ;
 int idxCreateFromCons (int *,TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int idxFindConstraint (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int idxCreateFromWhere(
  sqlite3expert *p,
  IdxScan *pScan,
  IdxConstraint *pTail
){
  IdxConstraint *p1 = 0;
  IdxConstraint *pCon;
  int rc;


  for(pCon=pScan->pEq; pCon; pCon=pCon->pNext){
    if( !idxFindConstraint(p1, pCon) && !idxFindConstraint(pTail, pCon) ){
      pCon->pLink = p1;
      p1 = pCon;
    }
  }



  rc = idxCreateFromCons(p, pScan, p1, pTail);



  if( pTail==0 ){
    for(pCon=pScan->pRange; rc==SQLITE_OK && pCon; pCon=pCon->pNext){
      assert( pCon->pLink==0 );
      if( !idxFindConstraint(p1, pCon) && !idxFindConstraint(pTail, pCon) ){
        rc = idxCreateFromCons(p, pScan, p1, pCon);
      }
    }
  }

  return rc;
}
