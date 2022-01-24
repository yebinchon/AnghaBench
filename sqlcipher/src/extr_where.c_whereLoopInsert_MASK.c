#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_25__ {scalar_t__ iPlanLimit; int /*<<< orphan*/  pWC; TYPE_8__* pOrSet; TYPE_6__* pWInfo; } ;
typedef  TYPE_4__ WhereLoopBuilder ;
struct TYPE_23__ {TYPE_7__* pIndex; } ;
struct TYPE_24__ {TYPE_2__ btree; } ;
struct TYPE_26__ {int wsFlags; TYPE_3__ u; struct TYPE_26__* pNextLoop; int /*<<< orphan*/  nOut; int /*<<< orphan*/  rRun; int /*<<< orphan*/  prereq; scalar_t__ nLTerm; } ;
typedef  TYPE_5__ WhereLoop ;
struct TYPE_27__ {TYPE_5__* pLoops; TYPE_1__* pParse; } ;
typedef  TYPE_6__ WhereInfo ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_28__ {scalar_t__ idxType; } ;
struct TYPE_22__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_7__ Index ;

/* Variables and functions */
 int SQLITE_DONE ; 
 scalar_t__ SQLITE_IDXTYPE_IPK ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int WHERE_VIRTUALTABLE ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int sqlite3WhereTrace ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__** FUNC5 (TYPE_5__**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*) ; 
 int FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(WhereLoopBuilder *pBuilder, WhereLoop *pTemplate){
  WhereLoop **ppPrev, *p;
  WhereInfo *pWInfo = pBuilder->pWInfo;
  sqlite3 *db = pWInfo->pParse->db;
  int rc;

  /* Stop the search once we hit the query planner search limit */
  if( pBuilder->iPlanLimit==0 ){
    FUNC0(0xffffffff,("=== query planner search limit reached ===\n"));
    if( pBuilder->pOrSet ) pBuilder->pOrSet->n = 0;
    return SQLITE_DONE;
  }
  pBuilder->iPlanLimit--;

  /* If pBuilder->pOrSet is defined, then only keep track of the costs
  ** and prereqs.
  */
  if( pBuilder->pOrSet!=0 ){
    if( pTemplate->nLTerm ){
#if WHERETRACE_ENABLED
      u16 n = pBuilder->pOrSet->n;
      int x =
#endif
      FUNC9(pBuilder->pOrSet, pTemplate->prereq, pTemplate->rRun,
                                    pTemplate->nOut);
#if WHERETRACE_ENABLED /* 0x8 */
      if( sqlite3WhereTrace & 0x8 ){
        sqlite3DebugPrintf(x?"   or-%d:  ":"   or-X:  ", n);
        whereLoopPrint(pTemplate, pBuilder->pWC);
      }
#endif
    }
    return SQLITE_OK;
  }

  /* Look for an existing WhereLoop to replace with pTemplate
  */
  FUNC3(pWInfo->pLoops, pTemplate);
  ppPrev = FUNC5(&pWInfo->pLoops, pTemplate);

  if( ppPrev==0 ){
    /* There already exists a WhereLoop on the list that is better
    ** than pTemplate, so just ignore pTemplate */
#if WHERETRACE_ENABLED /* 0x8 */
    if( sqlite3WhereTrace & 0x8 ){
      sqlite3DebugPrintf("   skip: ");
      whereLoopPrint(pTemplate, pBuilder->pWC);
    }
#endif
    return SQLITE_OK;  
  }else{
    p = *ppPrev;
  }

  /* If we reach this point it means that either p[] should be overwritten
  ** with pTemplate[] if p[] exists, or if p==NULL then allocate a new
  ** WhereLoop and insert it.
  */
#if WHERETRACE_ENABLED /* 0x8 */
  if( sqlite3WhereTrace & 0x8 ){
    if( p!=0 ){
      sqlite3DebugPrintf("replace: ");
      whereLoopPrint(p, pBuilder->pWC);
      sqlite3DebugPrintf("   with: ");
    }else{
      sqlite3DebugPrintf("    add: ");
    }
    whereLoopPrint(pTemplate, pBuilder->pWC);
  }
#endif
  if( p==0 ){
    /* Allocate a new WhereLoop to add to the end of the list */
    *ppPrev = p = FUNC1(db, sizeof(WhereLoop));
    if( p==0 ) return SQLITE_NOMEM_BKPT;
    FUNC6(p);
    p->pNextLoop = 0;
  }else{
    /* We will be overwriting WhereLoop p[].  But before we do, first
    ** go through the rest of the list and delete any other entries besides
    ** p[] that are also supplated by pTemplate */
    WhereLoop **ppTail = &p->pNextLoop;
    WhereLoop *pToDel;
    while( *ppTail ){
      ppTail = FUNC5(ppTail, pTemplate);
      if( ppTail==0 ) break;
      pToDel = *ppTail;
      if( pToDel==0 ) break;
      *ppTail = pToDel->pNextLoop;
#if WHERETRACE_ENABLED /* 0x8 */
      if( sqlite3WhereTrace & 0x8 ){
        sqlite3DebugPrintf(" delete: ");
        whereLoopPrint(pToDel, pBuilder->pWC);
      }
#endif
      FUNC4(db, pToDel);
    }
  }
  rc = FUNC8(db, p, pTemplate);
  if( (p->wsFlags & WHERE_VIRTUALTABLE)==0 ){
    Index *pIndex = p->u.btree.pIndex;
    if( pIndex && pIndex->idxType==SQLITE_IDXTYPE_IPK ){
      p->u.btree.pIndex = 0;
    }
  }
  return rc;
}