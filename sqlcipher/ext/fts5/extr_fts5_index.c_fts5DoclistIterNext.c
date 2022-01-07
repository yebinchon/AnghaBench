
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ i64 ;
struct TYPE_3__ {int* aPoslist; int nSize; int nPoslist; int* aEof; int iRowid; } ;
typedef TYPE_1__ Fts5DoclistIter ;


 int assert (int*) ;
 int fts5GetVarint (int*,int *) ;
 int fts5GetVarint32 (int*,int) ;

__attribute__((used)) static void fts5DoclistIterNext(Fts5DoclistIter *pIter){
  u8 *p = pIter->aPoslist + pIter->nSize + pIter->nPoslist;

  assert( pIter->aPoslist );
  if( p>=pIter->aEof ){
    pIter->aPoslist = 0;
  }else{
    i64 iDelta;

    p += fts5GetVarint(p, (u64*)&iDelta);
    pIter->iRowid += iDelta;


    if( p[0] & 0x80 ){
      int nPos;
      pIter->nSize = fts5GetVarint32(p, nPos);
      pIter->nPoslist = (nPos>>1);
    }else{
      pIter->nPoslist = ((int)(p[0])) >> 1;
      pIter->nSize = 1;
    }

    pIter->aPoslist = p;
  }
}
