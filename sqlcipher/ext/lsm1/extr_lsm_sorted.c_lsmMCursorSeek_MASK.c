#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__* apTreeCsr; int flags; int nPtr; int nTree; TYPE_2__* aPtr; } ;
struct TYPE_16__ {TYPE_1__* pLevel; int /*<<< orphan*/ * pSeg; } ;
struct TYPE_15__ {scalar_t__ nRight; int /*<<< orphan*/  lhs; } ;
typedef  TYPE_2__ SegmentPtr ;
typedef  TYPE_3__ MultiCursor ;
typedef  int /*<<< orphan*/  LsmPgno ;

/* Variables and functions */
 int CURSOR_FLUSH_FREELIST ; 
 int CURSOR_NEXT_OK ; 
 int CURSOR_PREV_OK ; 
 int CURSOR_SEEK_EQ ; 
 int LSM_OK ; 
#define  LSM_SEEK_EQ 129 
#define  LSM_SEEK_GE 128 
 int LSM_SEEK_LE ; 
 int LSM_SEEK_LEFAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*,int,int,void*,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (TYPE_3__*,scalar_t__,void*,int,int,int*) ; 

int FUNC10(
  MultiCursor *pCsr, 
  int iTopic, 
  void *pKey, int nKey, 
  int eSeek
){
  int eESeek = eSeek;             /* Effective eSeek parameter */
  int bStop = 0;                  /* Set to true to halt search operation */
  int rc = LSM_OK;                /* Return code */
  int iPtr = 0;                   /* Used to iterate through pCsr->aPtr[] */
  LsmPgno iPgno = 0;              /* FC pointer value */

  FUNC0( pCsr->apTreeCsr[0]==0 || iTopic==0 );
  FUNC0( pCsr->apTreeCsr[1]==0 || iTopic==0 );

  if( eESeek==LSM_SEEK_LEFAST ) eESeek = LSM_SEEK_LE;

  FUNC0( eESeek==LSM_SEEK_EQ || eESeek==LSM_SEEK_LE || eESeek==LSM_SEEK_GE );
  FUNC0( (pCsr->flags & CURSOR_FLUSH_FREELIST)==0 );
  FUNC0( pCsr->nPtr==0 || pCsr->aPtr[0].pLevel );

  pCsr->flags &= ~(CURSOR_NEXT_OK | CURSOR_PREV_OK | CURSOR_SEEK_EQ);
  rc = FUNC9(pCsr, pCsr->apTreeCsr[0], pKey, nKey, eESeek, &bStop);
  if( rc==LSM_OK && bStop==0 ){
    rc = FUNC9(pCsr, pCsr->apTreeCsr[1], pKey, nKey, eESeek, &bStop);
  }

  /* Seek all segment pointers. */
  for(iPtr=0; iPtr<pCsr->nPtr && rc==LSM_OK && bStop==0; iPtr++){
    SegmentPtr *pPtr = &pCsr->aPtr[iPtr];
    FUNC0( pPtr->pSeg==&pPtr->pLevel->lhs );
    rc = FUNC8(pCsr, pPtr, eESeek, iTopic, pKey, nKey, &iPgno, &bStop);
    iPtr += pPtr->pLevel->nRight;
  }

  if( eSeek!=LSM_SEEK_EQ ){
    if( rc==LSM_OK ){
      rc = FUNC5(pCsr);
    }
    if( rc==LSM_OK ){
      int i;
      for(i=pCsr->nTree-1; i>0; i--){
        FUNC7(pCsr, i, eESeek==LSM_SEEK_LE);
      }
      if( eSeek==LSM_SEEK_GE ) pCsr->flags |= CURSOR_NEXT_OK;
      if( eSeek==LSM_SEEK_LE ) pCsr->flags |= CURSOR_PREV_OK;
    }

    FUNC6(pCsr, &rc);
    if( rc==LSM_OK && eSeek!=LSM_SEEK_LEFAST && 0==FUNC4(pCsr, 0) ){
      switch( eESeek ){
        case LSM_SEEK_EQ:
          FUNC3(pCsr);
          break;
        case LSM_SEEK_GE:
          rc = FUNC1(pCsr);
          break;
        default:
          rc = FUNC2(pCsr);
          break;
      }
    }
  }

  return rc;
}