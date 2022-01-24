#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ eState; int curFlags; int iPage; scalar_t__* aiIdx; int ix; scalar_t__ pgnoRoot; TYPE_4__* pPage; TYPE_3__** apPage; TYPE_2__* pBtree; } ;
struct TYPE_13__ {int nCell; int leaf; } ;
struct TYPE_12__ {scalar_t__ nCell; } ;
struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_5__ BtCursor ;

/* Variables and functions */
 int BTCF_AtLast ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_EMPTY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(BtCursor *pCur, int *pRes){
  int rc;
 
  FUNC0( FUNC1(pCur) );
  FUNC0( FUNC4(pCur->pBtree->db->mutex) );

  /* If the cursor already points to the last entry, this is a no-op. */
  if( CURSOR_VALID==pCur->eState && (pCur->curFlags & BTCF_AtLast)!=0 ){
#ifdef SQLITE_DEBUG
    /* This block serves to assert() that the cursor really does point 
    ** to the last entry in the b-tree. */
    int ii;
    for(ii=0; ii<pCur->iPage; ii++){
      assert( pCur->aiIdx[ii]==pCur->apPage[ii]->nCell );
    }
    assert( pCur->ix==pCur->pPage->nCell-1 );
    assert( pCur->pPage->leaf );
#endif
    return SQLITE_OK;
  }

  rc = FUNC3(pCur);
  if( rc==SQLITE_OK ){
    FUNC0( pCur->eState==CURSOR_VALID );
    *pRes = 0;
    rc = FUNC2(pCur);
    if( rc==SQLITE_OK ){
      pCur->curFlags |= BTCF_AtLast;
    }else{
      pCur->curFlags &= ~BTCF_AtLast;
    }
  }else if( rc==SQLITE_EMPTY ){
    FUNC0( pCur->pgnoRoot==0 || pCur->pPage->nCell==0 );
    *pRes = 1;
    rc = SQLITE_OK;
  }
  return rc;
}