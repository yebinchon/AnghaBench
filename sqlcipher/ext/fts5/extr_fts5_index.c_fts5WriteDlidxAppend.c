
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_19__ {scalar_t__ n; int* p; } ;
struct TYPE_18__ {int pgno; int bPrevValid; int iPrev; TYPE_6__ buf; } ;
struct TYPE_17__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_15__ {int pgno; } ;
struct TYPE_16__ {TYPE_2__ writer; TYPE_5__* aDlidx; int iSegid; } ;
struct TYPE_14__ {scalar_t__ pgsz; } ;
typedef TYPE_3__ Fts5SegWriter ;
typedef TYPE_4__ Fts5Index ;
typedef TYPE_5__ Fts5DlidxWriter ;


 int FTS5_DLIDX_ROWID (int ,int,int) ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5DataWrite (TYPE_4__*,int ,int*,scalar_t__) ;
 int fts5DlidxExtractFirstRowid (TYPE_6__*) ;
 int fts5WriteDlidxGrow (TYPE_4__*,TYPE_3__*,int) ;
 int sqlite3Fts5BufferAppendVarint (scalar_t__*,TYPE_6__*,int) ;
 int sqlite3Fts5BufferZero (TYPE_6__*) ;

__attribute__((used)) static void fts5WriteDlidxAppend(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  i64 iRowid
){
  int i;
  int bDone = 0;

  for(i=0; p->rc==SQLITE_OK && bDone==0; i++){
    i64 iVal;
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[i];

    if( pDlidx->buf.n>=p->pConfig->pgsz ){





      pDlidx->buf.p[0] = 0x01;
      fts5DataWrite(p,
          FTS5_DLIDX_ROWID(pWriter->iSegid, i, pDlidx->pgno),
          pDlidx->buf.p, pDlidx->buf.n
      );
      fts5WriteDlidxGrow(p, pWriter, i+2);
      pDlidx = &pWriter->aDlidx[i];
      if( p->rc==SQLITE_OK && pDlidx[1].buf.n==0 ){
        i64 iFirst = fts5DlidxExtractFirstRowid(&pDlidx->buf);


        pDlidx[1].pgno = pDlidx->pgno;
        sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx[1].buf, 0);
        sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx[1].buf, pDlidx->pgno);
        sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx[1].buf, iFirst);
        pDlidx[1].bPrevValid = 1;
        pDlidx[1].iPrev = iFirst;
      }

      sqlite3Fts5BufferZero(&pDlidx->buf);
      pDlidx->bPrevValid = 0;
      pDlidx->pgno++;
    }else{
      bDone = 1;
    }

    if( pDlidx->bPrevValid ){
      iVal = iRowid - pDlidx->iPrev;
    }else{
      i64 iPgno = (i==0 ? pWriter->writer.pgno : pDlidx[-1].pgno);
      assert( pDlidx->buf.n==0 );
      sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx->buf, !bDone);
      sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx->buf, iPgno);
      iVal = iRowid;
    }

    sqlite3Fts5BufferAppendVarint(&p->rc, &pDlidx->buf, iVal);
    pDlidx->bPrevValid = 1;
    pDlidx->iPrev = iRowid;
  }
}
