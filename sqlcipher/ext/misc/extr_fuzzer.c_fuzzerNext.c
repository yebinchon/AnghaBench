
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_14__ {scalar_t__ rCostX; struct TYPE_14__* pNext; } ;
typedef TYPE_1__ fuzzer_stem ;
struct TYPE_15__ {scalar_t__ rLimit; TYPE_1__* pStem; TYPE_1__* pDone; int zBuf; int nBuf; int iRowid; } ;
typedef TYPE_2__ fuzzer_cursor ;
typedef scalar_t__ fuzzer_cost ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fuzzerAdvance (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* fuzzerInsert (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ fuzzerLowestCostStem (TYPE_2__*) ;
 TYPE_1__* fuzzerNewStem (TYPE_2__*,int ,scalar_t__) ;
 int fuzzerRender (TYPE_1__*,int *,int *) ;
 int fuzzerSeen (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int fuzzerNext(sqlite3_vtab_cursor *cur){
  fuzzer_cursor *pCur = (fuzzer_cursor*)cur;
  int rc;
  fuzzer_stem *pStem, *pNew;

  pCur->iRowid++;




  pStem = pCur->pStem;
  if( pStem->rCostX>0 ){
    rc = fuzzerRender(pStem, &pCur->zBuf, &pCur->nBuf);
    if( rc==SQLITE_NOMEM ) return SQLITE_NOMEM;
    pNew = fuzzerNewStem(pCur, pCur->zBuf, pStem->rCostX);
    if( pNew ){
      if( fuzzerAdvance(pCur, pNew)==0 ){
        pNew->pNext = pCur->pDone;
        pCur->pDone = pNew;
      }else{
        if( fuzzerInsert(pCur, pNew)==pNew ){
          return SQLITE_OK;
        }
      }
    }else{
      return SQLITE_NOMEM;
    }
  }




  while( (pStem = pCur->pStem)!=0 ){
    int res = fuzzerAdvance(pCur, pStem);
    if( res<0 ){
      return SQLITE_NOMEM;
    }else if( res>0 ){
      pCur->pStem = 0;
      pStem = fuzzerInsert(pCur, pStem);
      if( (rc = fuzzerSeen(pCur, pStem))!=0 ){
        if( rc<0 ) return SQLITE_NOMEM;
        continue;
      }
      return SQLITE_OK;
    }
    pCur->pStem = 0;
    pStem->pNext = pCur->pDone;
    pCur->pDone = pStem;
    if( fuzzerLowestCostStem(pCur) ){
      rc = fuzzerSeen(pCur, pCur->pStem);
      if( rc<0 ) return SQLITE_NOMEM;
      if( rc==0 ){
        return SQLITE_OK;
      }
    }
  }



  pCur->rLimit = (fuzzer_cost)0;
  return SQLITE_OK;
}
