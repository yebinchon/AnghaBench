#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct RowSetEntry {scalar_t__ v; struct RowSetEntry* pLeft; struct RowSetEntry* pRight; } ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {int rsFlags; int iBatch; struct RowSetEntry* pForest; scalar_t__ pLast; struct RowSetEntry* pEntry; } ;
typedef  TYPE_1__ RowSet ;

/* Variables and functions */
 int ROWSET_NEXT ; 
 int ROWSET_SORTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct RowSetEntry* FUNC1 (TYPE_1__*) ; 
 struct RowSetEntry* FUNC2 (struct RowSetEntry*,struct RowSetEntry*) ; 
 struct RowSetEntry* FUNC3 (struct RowSetEntry*) ; 
 void* FUNC4 (struct RowSetEntry*) ; 
 int /*<<< orphan*/  FUNC5 (struct RowSetEntry*,struct RowSetEntry**,struct RowSetEntry**) ; 

int FUNC6(RowSet *pRowSet, int iBatch, sqlite3_int64 iRowid){
  struct RowSetEntry *p, *pTree;

  /* This routine is never called after sqlite3RowSetNext() */
  FUNC0( pRowSet!=0 && (pRowSet->rsFlags & ROWSET_NEXT)==0 );

  /* Sort entries into the forest on the first test of a new batch.
  ** To save unnecessary work, only do this when the batch number changes.
  */
  if( iBatch!=pRowSet->iBatch ){  /*OPTIMIZATION-IF-FALSE*/
    p = pRowSet->pEntry;
    if( p ){
      struct RowSetEntry **ppPrevTree = &pRowSet->pForest;
      if( (pRowSet->rsFlags & ROWSET_SORTED)==0 ){ /*OPTIMIZATION-IF-FALSE*/
        /* Only sort the current set of entiries if they need it */
        p = FUNC3(p);
      }
      for(pTree = pRowSet->pForest; pTree; pTree=pTree->pRight){
        ppPrevTree = &pTree->pRight;
        if( pTree->pLeft==0 ){
          pTree->pLeft = FUNC4(p);
          break;
        }else{
          struct RowSetEntry *pAux, *pTail;
          FUNC5(pTree->pLeft, &pAux, &pTail);
          pTree->pLeft = 0;
          p = FUNC2(pAux, p);
        }
      }
      if( pTree==0 ){
        *ppPrevTree = pTree = FUNC1(pRowSet);
        if( pTree ){
          pTree->v = 0;
          pTree->pRight = 0;
          pTree->pLeft = FUNC4(p);
        }
      }
      pRowSet->pEntry = 0;
      pRowSet->pLast = 0;
      pRowSet->rsFlags |= ROWSET_SORTED;
    }
    pRowSet->iBatch = iBatch;
  }

  /* Test to see if the iRowid value appears anywhere in the forest.
  ** Return 1 if it does and 0 if not.
  */
  for(pTree = pRowSet->pForest; pTree; pTree=pTree->pRight){
    p = pTree->pLeft;
    while( p ){
      if( p->v<iRowid ){
        p = p->pRight;
      }else if( p->v>iRowid ){
        p = p->pLeft;
      }else{
        return 1;
      }
    }
  }
  return 0;
}