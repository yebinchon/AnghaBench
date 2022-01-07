
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__* apTreeCsr; int flags; int nPtr; int nTree; TYPE_2__* aPtr; } ;
struct TYPE_16__ {TYPE_1__* pLevel; int * pSeg; } ;
struct TYPE_15__ {scalar_t__ nRight; int lhs; } ;
typedef TYPE_2__ SegmentPtr ;
typedef TYPE_3__ MultiCursor ;
typedef int LsmPgno ;


 int CURSOR_FLUSH_FREELIST ;
 int CURSOR_NEXT_OK ;
 int CURSOR_PREV_OK ;
 int CURSOR_SEEK_EQ ;
 int LSM_OK ;


 int LSM_SEEK_LE ;
 int LSM_SEEK_LEFAST ;
 int assert (int) ;
 int lsmMCursorNext (TYPE_3__*) ;
 int lsmMCursorPrev (TYPE_3__*) ;
 int lsmMCursorReset (TYPE_3__*) ;
 scalar_t__ mcursorLocationOk (TYPE_3__*,int ) ;
 int multiCursorAllocTree (TYPE_3__*) ;
 int multiCursorCacheKey (TYPE_3__*,int*) ;
 int multiCursorDoCompare (TYPE_3__*,int,int) ;
 int seekInLevel (TYPE_3__*,TYPE_2__*,int,int,void*,int,int *,int*) ;
 int treeCursorSeek (TYPE_3__*,scalar_t__,void*,int,int,int*) ;

int lsmMCursorSeek(
  MultiCursor *pCsr,
  int iTopic,
  void *pKey, int nKey,
  int eSeek
){
  int eESeek = eSeek;
  int bStop = 0;
  int rc = LSM_OK;
  int iPtr = 0;
  LsmPgno iPgno = 0;

  assert( pCsr->apTreeCsr[0]==0 || iTopic==0 );
  assert( pCsr->apTreeCsr[1]==0 || iTopic==0 );

  if( eESeek==LSM_SEEK_LEFAST ) eESeek = LSM_SEEK_LE;

  assert( eESeek==129 || eESeek==LSM_SEEK_LE || eESeek==128 );
  assert( (pCsr->flags & CURSOR_FLUSH_FREELIST)==0 );
  assert( pCsr->nPtr==0 || pCsr->aPtr[0].pLevel );

  pCsr->flags &= ~(CURSOR_NEXT_OK | CURSOR_PREV_OK | CURSOR_SEEK_EQ);
  rc = treeCursorSeek(pCsr, pCsr->apTreeCsr[0], pKey, nKey, eESeek, &bStop);
  if( rc==LSM_OK && bStop==0 ){
    rc = treeCursorSeek(pCsr, pCsr->apTreeCsr[1], pKey, nKey, eESeek, &bStop);
  }


  for(iPtr=0; iPtr<pCsr->nPtr && rc==LSM_OK && bStop==0; iPtr++){
    SegmentPtr *pPtr = &pCsr->aPtr[iPtr];
    assert( pPtr->pSeg==&pPtr->pLevel->lhs );
    rc = seekInLevel(pCsr, pPtr, eESeek, iTopic, pKey, nKey, &iPgno, &bStop);
    iPtr += pPtr->pLevel->nRight;
  }

  if( eSeek!=129 ){
    if( rc==LSM_OK ){
      rc = multiCursorAllocTree(pCsr);
    }
    if( rc==LSM_OK ){
      int i;
      for(i=pCsr->nTree-1; i>0; i--){
        multiCursorDoCompare(pCsr, i, eESeek==LSM_SEEK_LE);
      }
      if( eSeek==128 ) pCsr->flags |= CURSOR_NEXT_OK;
      if( eSeek==LSM_SEEK_LE ) pCsr->flags |= CURSOR_PREV_OK;
    }

    multiCursorCacheKey(pCsr, &rc);
    if( rc==LSM_OK && eSeek!=LSM_SEEK_LEFAST && 0==mcursorLocationOk(pCsr, 0) ){
      switch( eESeek ){
        case 129:
          lsmMCursorReset(pCsr);
          break;
        case 128:
          rc = lsmMCursorNext(pCsr);
          break;
        default:
          rc = lsmMCursorPrev(pCsr);
          break;
      }
    }
  }

  return rc;
}
