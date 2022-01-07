
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int iFirst; int bTermEq; } ;
struct TYPE_6__ {int nSeg; int bRev; TYPE_1__* aSeg; TYPE_3__* aFirst; } ;
struct TYPE_5__ {scalar_t__ pLeaf; scalar_t__ iRowid; int bDel; int term; } ;
typedef TYPE_1__ Fts5SegIter ;
typedef TYPE_2__ Fts5Iter ;
typedef TYPE_3__ Fts5CResult ;


 int assert (int) ;
 int assert_nc (int) ;
 int fts5BufferCompare (int *,int *) ;

__attribute__((used)) static int fts5MultiIterDoCompare(Fts5Iter *pIter, int iOut){
  int i1;
  int i2;
  int iRes;
  Fts5SegIter *p1;
  Fts5SegIter *p2;
  Fts5CResult *pRes = &pIter->aFirst[iOut];

  assert( iOut<pIter->nSeg && iOut>0 );
  assert( pIter->bRev==0 || pIter->bRev==1 );

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
  if( p1->pLeaf==0 ){
    iRes = i2;
  }else if( p2->pLeaf==0 ){
    iRes = i1;
  }else{
    int res = fts5BufferCompare(&p1->term, &p2->term);
    if( res==0 ){
      assert_nc( i2>i1 );
      assert_nc( i2!=0 );
      pRes->bTermEq = 1;
      if( p1->iRowid==p2->iRowid ){
        p1->bDel = p2->bDel;
        return i2;
      }
      res = ((p1->iRowid > p2->iRowid)==pIter->bRev) ? -1 : +1;
    }
    assert( res!=0 );
    if( res<0 ){
      iRes = i1;
    }else{
      iRes = i2;
    }
  }

  pRes->iFirst = (u16)iRes;
  return 0;
}
