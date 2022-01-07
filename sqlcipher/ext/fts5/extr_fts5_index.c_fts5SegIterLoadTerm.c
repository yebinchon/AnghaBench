
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int n; int nSpace; } ;
struct TYPE_11__ {int rc; } ;
struct TYPE_10__ {int iLeafOffset; int iTermLeafOffset; size_t iPgidxOff; size_t iEndofDoclist; TYPE_1__* pLeaf; int iLeafPgno; int iTermLeafPgno; TYPE_8__ term; } ;
struct TYPE_9__ {int szLeaf; size_t nn; int * p; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;


 int FTS5_CORRUPT ;
 int assert (int) ;
 int fts5BufferAppendBlob (int *,TYPE_8__*,int,int *) ;
 scalar_t__ fts5GetVarint32 (int *,int) ;
 int fts5SegIterLoadRowid (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void fts5SegIterLoadTerm(Fts5Index *p, Fts5SegIter *pIter, int nKeep){
  u8 *a = pIter->pLeaf->p;
  int iOff = pIter->iLeafOffset;
  int nNew;

  iOff += fts5GetVarint32(&a[iOff], nNew);
  if( iOff+nNew>pIter->pLeaf->szLeaf || nKeep>pIter->term.n || nNew==0 ){
    p->rc = FTS5_CORRUPT;
    return;
  }
  pIter->term.n = nKeep;
  fts5BufferAppendBlob(&p->rc, &pIter->term, nNew, &a[iOff]);
  assert( pIter->term.n<=pIter->term.nSpace );
  iOff += nNew;
  pIter->iTermLeafOffset = iOff;
  pIter->iTermLeafPgno = pIter->iLeafPgno;
  pIter->iLeafOffset = iOff;

  if( pIter->iPgidxOff>=pIter->pLeaf->nn ){
    pIter->iEndofDoclist = pIter->pLeaf->nn+1;
  }else{
    int nExtra;
    pIter->iPgidxOff += fts5GetVarint32(&a[pIter->iPgidxOff], nExtra);
    pIter->iEndofDoclist += nExtra;
  }

  fts5SegIterLoadRowid(p, pIter);
}
