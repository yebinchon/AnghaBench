
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ u16 ;
typedef int sqlite3 ;
struct TYPE_25__ {scalar_t__ iPlanLimit; int pWC; TYPE_8__* pOrSet; TYPE_6__* pWInfo; } ;
typedef TYPE_4__ WhereLoopBuilder ;
struct TYPE_23__ {TYPE_7__* pIndex; } ;
struct TYPE_24__ {TYPE_2__ btree; } ;
struct TYPE_26__ {int wsFlags; TYPE_3__ u; struct TYPE_26__* pNextLoop; int nOut; int rRun; int prereq; scalar_t__ nLTerm; } ;
typedef TYPE_5__ WhereLoop ;
struct TYPE_27__ {TYPE_5__* pLoops; TYPE_1__* pParse; } ;
typedef TYPE_6__ WhereInfo ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_28__ {scalar_t__ idxType; } ;
struct TYPE_22__ {int * db; } ;
typedef TYPE_7__ Index ;


 int SQLITE_DONE ;
 scalar_t__ SQLITE_IDXTYPE_IPK ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int WHERETRACE (int,char*) ;
 int WHERE_VIRTUALTABLE ;
 TYPE_5__* sqlite3DbMallocRawNN (int *,int) ;
 int sqlite3DebugPrintf (char*,...) ;
 int sqlite3WhereTrace ;
 int whereLoopAdjustCost (TYPE_5__*,TYPE_5__*) ;
 int whereLoopDelete (int *,TYPE_5__*) ;
 TYPE_5__** whereLoopFindLesser (TYPE_5__**,TYPE_5__*) ;
 int whereLoopInit (TYPE_5__*) ;
 int whereLoopPrint (TYPE_5__*,int ) ;
 int whereLoopXfer (int *,TYPE_5__*,TYPE_5__*) ;
 int whereOrInsert (TYPE_8__*,int ,int ,int ) ;

__attribute__((used)) static int whereLoopInsert(WhereLoopBuilder *pBuilder, WhereLoop *pTemplate){
  WhereLoop **ppPrev, *p;
  WhereInfo *pWInfo = pBuilder->pWInfo;
  sqlite3 *db = pWInfo->pParse->db;
  int rc;


  if( pBuilder->iPlanLimit==0 ){
    WHERETRACE(0xffffffff,("=== query planner search limit reached ===\n"));
    if( pBuilder->pOrSet ) pBuilder->pOrSet->n = 0;
    return SQLITE_DONE;
  }
  pBuilder->iPlanLimit--;




  if( pBuilder->pOrSet!=0 ){
    if( pTemplate->nLTerm ){




      whereOrInsert(pBuilder->pOrSet, pTemplate->prereq, pTemplate->rRun,
                                    pTemplate->nOut);






    }
    return SQLITE_OK;
  }



  whereLoopAdjustCost(pWInfo->pLoops, pTemplate);
  ppPrev = whereLoopFindLesser(&pWInfo->pLoops, pTemplate);

  if( ppPrev==0 ){
    return SQLITE_OK;
  }else{
    p = *ppPrev;
  }
  if( p==0 ){

    *ppPrev = p = sqlite3DbMallocRawNN(db, sizeof(WhereLoop));
    if( p==0 ) return SQLITE_NOMEM_BKPT;
    whereLoopInit(p);
    p->pNextLoop = 0;
  }else{



    WhereLoop **ppTail = &p->pNextLoop;
    WhereLoop *pToDel;
    while( *ppTail ){
      ppTail = whereLoopFindLesser(ppTail, pTemplate);
      if( ppTail==0 ) break;
      pToDel = *ppTail;
      if( pToDel==0 ) break;
      *ppTail = pToDel->pNextLoop;






      whereLoopDelete(db, pToDel);
    }
  }
  rc = whereLoopXfer(db, p, pTemplate);
  if( (p->wsFlags & WHERE_VIRTUALTABLE)==0 ){
    Index *pIndex = p->u.btree.pIndex;
    if( pIndex && pIndex->idxType==SQLITE_IDXTYPE_IPK ){
      p->u.btree.pIndex = 0;
    }
  }
  return rc;
}
