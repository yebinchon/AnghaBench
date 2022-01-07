
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ i64 ;
struct TYPE_14__ {TYPE_2__* pConfig; } ;
struct TYPE_13__ {int flags; scalar_t__ pNextLeaf; size_t iRowidOffset; int iLeafOffset; int* aRowidOffset; int iRowid; scalar_t__ nPos; TYPE_1__* pLeaf; } ;
struct TYPE_12__ {scalar_t__ eDetail; } ;
struct TYPE_11__ {int * p; } ;
typedef TYPE_3__ Fts5SegIter ;
typedef TYPE_4__ Fts5Index ;


 scalar_t__ FTS5_DETAIL_NONE ;
 int FTS5_SEGITER_REVERSE ;
 int UNUSED_PARAM (int*) ;
 int assert (int) ;
 int fts5GetVarint (int *,int *) ;
 int fts5SegIterLoadNPos (TYPE_4__*,TYPE_3__*) ;
 int fts5SegIterReverseNewPage (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void fts5SegIterNext_Reverse(
  Fts5Index *p,
  Fts5SegIter *pIter,
  int *pbUnused
){
  assert( pIter->flags & FTS5_SEGITER_REVERSE );
  assert( pIter->pNextLeaf==0 );
  UNUSED_PARAM(pbUnused);

  if( pIter->iRowidOffset>0 ){
    u8 *a = pIter->pLeaf->p;
    int iOff;
    i64 iDelta;

    pIter->iRowidOffset--;
    pIter->iLeafOffset = pIter->aRowidOffset[pIter->iRowidOffset];
    fts5SegIterLoadNPos(p, pIter);
    iOff = pIter->iLeafOffset;
    if( p->pConfig->eDetail!=FTS5_DETAIL_NONE ){
      iOff += pIter->nPos;
    }
    fts5GetVarint(&a[iOff], (u64*)&iDelta);
    pIter->iRowid -= iDelta;
  }else{
    fts5SegIterReverseNewPage(p, pIter);
  }
}
