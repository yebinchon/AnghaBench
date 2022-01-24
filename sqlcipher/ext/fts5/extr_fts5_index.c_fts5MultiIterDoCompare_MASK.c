#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_7__ {int iFirst; int bTermEq; } ;
struct TYPE_6__ {int nSeg; int bRev; TYPE_1__* aSeg; TYPE_3__* aFirst; } ;
struct TYPE_5__ {scalar_t__ pLeaf; scalar_t__ iRowid; int /*<<< orphan*/  bDel; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ Fts5SegIter ;
typedef  TYPE_2__ Fts5Iter ;
typedef  TYPE_3__ Fts5CResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Fts5Iter *pIter, int iOut){
  int i1;                         /* Index of left-hand Fts5SegIter */
  int i2;                         /* Index of right-hand Fts5SegIter */
  int iRes;
  Fts5SegIter *p1;                /* Left-hand Fts5SegIter */
  Fts5SegIter *p2;                /* Right-hand Fts5SegIter */
  Fts5CResult *pRes = &pIter->aFirst[iOut];

  FUNC0( iOut<pIter->nSeg && iOut>0 );
  FUNC0( pIter->bRev==0 || pIter->bRev==1 );

  if( iOut>=(pIter->nSeg/2) ){
    i1 = (iOut - pIter->nSeg/2) * 2;
    i2 = i1 + 1;
  }else{
    i1 = pIter->aFirst[iOut*2].iFirst;
    i2 = pIter->aFirst[iOut*2+1].iFirst;
  }
  p1 = &pIter->aSeg[i1];
  p2 = &pIter->aSeg[i2];

  pRes->bTermEq = 0;
  if( p1->pLeaf==0 ){           /* If p1 is at EOF */
    iRes = i2;
  }else if( p2->pLeaf==0 ){     /* If p2 is at EOF */
    iRes = i1;
  }else{
    int res = FUNC2(&p1->term, &p2->term);
    if( res==0 ){
      FUNC1( i2>i1 );
      FUNC1( i2!=0 );
      pRes->bTermEq = 1;
      if( p1->iRowid==p2->iRowid ){
        p1->bDel = p2->bDel;
        return i2;
      }
      res = ((p1->iRowid > p2->iRowid)==pIter->bRev) ? -1 : +1;
    }
    FUNC0( res!=0 );
    if( res<0 ){
      iRes = i1;
    }else{
      iRes = i2;
    }
  }

  pRes->iFirst = (u16)iRes;
  return 0;
}