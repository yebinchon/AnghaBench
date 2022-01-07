
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int u8 ;
struct TYPE_26__ {scalar_t__ n; int * p; } ;
struct TYPE_25__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_18__ {int p; scalar_t__ n; } ;
struct TYPE_19__ {int n; } ;
struct TYPE_24__ {int iPrevPgidx; int pgno; TYPE_14__ term; TYPE_15__ buf; TYPE_7__ pgidx; } ;
struct TYPE_23__ {int bFirstRowidInDoclist; scalar_t__ nDlidx; TYPE_3__* aDlidx; scalar_t__ bFirstRowidInPage; scalar_t__ bFirstTermInPage; TYPE_5__ writer; } ;
struct TYPE_21__ {scalar_t__ n; } ;
struct TYPE_22__ {int pgno; TYPE_2__ buf; } ;
struct TYPE_20__ {scalar_t__ pgsz; } ;
typedef TYPE_4__ Fts5SegWriter ;
typedef TYPE_5__ Fts5PageWriter ;
typedef TYPE_6__ Fts5Index ;
typedef TYPE_7__ Fts5Buffer ;


 scalar_t__ FTS5_DATA_PADDING ;
 int MIN (scalar_t__,int) ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5BufferAppendBlob (scalar_t__*,TYPE_15__*,int,int const*) ;
 int fts5BufferAppendVarint (scalar_t__*,TYPE_15__*,int) ;
 int fts5BufferGrow (scalar_t__*,TYPE_15__*,scalar_t__) ;
 int fts5BufferSet (scalar_t__*,TYPE_14__*,int,int const*) ;
 int fts5PrefixCompress (int,int ,int const*) ;
 int fts5PutU16 (int *,int) ;
 int fts5WriteBtreeTerm (TYPE_6__*,TYPE_4__*,int,int const*) ;
 int fts5WriteFlushLeaf (TYPE_6__*,TYPE_4__*) ;
 scalar_t__ sqlite3Fts5PutVarint (int *,int) ;

__attribute__((used)) static void fts5WriteAppendTerm(
  Fts5Index *p,
  Fts5SegWriter *pWriter,
  int nTerm, const u8 *pTerm
){
  int nPrefix;
  Fts5PageWriter *pPage = &pWriter->writer;
  Fts5Buffer *pPgidx = &pWriter->writer.pgidx;
  int nMin = MIN(pPage->term.n, nTerm);

  assert( p->rc==SQLITE_OK );
  assert( pPage->buf.n>=4 );
  assert( pPage->buf.n>4 || pWriter->bFirstTermInPage );


  if( (pPage->buf.n + pPgidx->n + nTerm + 2)>=p->pConfig->pgsz ){
    if( pPage->buf.n>4 ){
      fts5WriteFlushLeaf(p, pWriter);
      if( p->rc!=SQLITE_OK ) return;
    }
    fts5BufferGrow(&p->rc, &pPage->buf, nTerm+FTS5_DATA_PADDING);
  }


  pPgidx->n += sqlite3Fts5PutVarint(
      &pPgidx->p[pPgidx->n], pPage->buf.n - pPage->iPrevPgidx
  );
  pPage->iPrevPgidx = pPage->buf.n;





  if( pWriter->bFirstTermInPage ){
    nPrefix = 0;
    if( pPage->pgno!=1 ){
      int n = nTerm;
      if( pPage->term.n ){
        n = 1 + fts5PrefixCompress(nMin, pPage->term.p, pTerm);
      }
      fts5WriteBtreeTerm(p, pWriter, n, pTerm);
      if( p->rc!=SQLITE_OK ) return;
      pPage = &pWriter->writer;
    }
  }else{
    nPrefix = fts5PrefixCompress(nMin, pPage->term.p, pTerm);
    fts5BufferAppendVarint(&p->rc, &pPage->buf, nPrefix);
  }



  fts5BufferAppendVarint(&p->rc, &pPage->buf, nTerm - nPrefix);
  fts5BufferAppendBlob(&p->rc, &pPage->buf, nTerm - nPrefix, &pTerm[nPrefix]);


  fts5BufferSet(&p->rc, &pPage->term, nTerm, pTerm);
  pWriter->bFirstTermInPage = 0;

  pWriter->bFirstRowidInPage = 0;
  pWriter->bFirstRowidInDoclist = 1;

  assert( p->rc || (pWriter->nDlidx>0 && pWriter->aDlidx[0].buf.n==0) );
  pWriter->aDlidx[0].pgno = pPage->pgno;
}
