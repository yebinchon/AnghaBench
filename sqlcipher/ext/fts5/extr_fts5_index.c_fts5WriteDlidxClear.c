
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n; int p; } ;
struct TYPE_6__ {scalar_t__ pgno; scalar_t__ bPrevValid; TYPE_3__ buf; } ;
struct TYPE_5__ {int nDlidx; int iSegid; TYPE_2__* aDlidx; } ;
typedef TYPE_1__ Fts5SegWriter ;
typedef int Fts5Index ;
typedef TYPE_2__ Fts5DlidxWriter ;


 int FTS5_DLIDX_ROWID (int ,int,scalar_t__) ;
 int assert (int) ;
 int fts5DataWrite (int *,int ,int ,scalar_t__) ;
 int sqlite3Fts5BufferZero (TYPE_3__*) ;

__attribute__((used)) static void fts5WriteDlidxClear(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  int bFlush
){
  int i;
  assert( bFlush==0 || (pWriter->nDlidx>0 && pWriter->aDlidx[0].buf.n>0) );
  for(i=0; i<pWriter->nDlidx; i++){
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[i];
    if( pDlidx->buf.n==0 ) break;
    if( bFlush ){
      assert( pDlidx->pgno!=0 );
      fts5DataWrite(p,
          FTS5_DLIDX_ROWID(pWriter->iSegid, i, pDlidx->pgno),
          pDlidx->buf.p, pDlidx->buf.n
      );
    }
    sqlite3Fts5BufferZero(&pDlidx->buf);
    pDlidx->bPrevValid = 0;
  }
}
