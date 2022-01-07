
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_21__ {int rc; } ;
struct TYPE_20__ {int iLeafPgno; scalar_t__ pLeaf; int term; int flags; TYPE_1__* pSeg; } ;
struct TYPE_19__ {int pgnoFirst; int iSegid; } ;
typedef TYPE_1__ Fts5StructureSegment ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;


 int FTS5INDEX_QUERY_DESC ;
 int FTS5INDEX_QUERY_SCAN ;
 int FTS5_SEGITER_ONETERM ;
 int FTS5_SEGITER_REVERSE ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int assert (int) ;
 int assert_nc (int) ;
 scalar_t__ fts5BufferCompareBlob (int *,int const*,int) ;
 int * fts5IdxSelectStmt (TYPE_3__*) ;
 int fts5LeafSeek (TYPE_3__*,int,TYPE_2__*,int const*,int) ;
 int fts5SegIterLoadDlidx (TYPE_3__*,TYPE_2__*) ;
 int fts5SegIterNextPage (TYPE_3__*,TYPE_2__*) ;
 int fts5SegIterReverse (TYPE_3__*,TYPE_2__*) ;
 int fts5SegIterSetNext (TYPE_3__*,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_bind_blob (int *,int,int const*,int,int ) ;
 int sqlite3_bind_int (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void fts5SegIterSeekInit(
  Fts5Index *p,
  const u8 *pTerm, int nTerm,
  int flags,
  Fts5StructureSegment *pSeg,
  Fts5SegIter *pIter
){
  int iPg = 1;
  int bGe = (flags & FTS5INDEX_QUERY_SCAN);
  int bDlidx = 0;
  sqlite3_stmt *pIdxSelect = 0;

  assert( bGe==0 || (flags & FTS5INDEX_QUERY_DESC)==0 );
  assert( pTerm && nTerm );
  memset(pIter, 0, sizeof(*pIter));
  pIter->pSeg = pSeg;



  pIdxSelect = fts5IdxSelectStmt(p);
  if( p->rc ) return;
  sqlite3_bind_int(pIdxSelect, 1, pSeg->iSegid);
  sqlite3_bind_blob(pIdxSelect, 2, pTerm, nTerm, SQLITE_STATIC);
  if( SQLITE_ROW==sqlite3_step(pIdxSelect) ){
    i64 val = sqlite3_column_int(pIdxSelect, 0);
    iPg = (int)(val>>1);
    bDlidx = (val & 0x0001);
  }
  p->rc = sqlite3_reset(pIdxSelect);
  sqlite3_bind_null(pIdxSelect, 2);

  if( iPg<pSeg->pgnoFirst ){
    iPg = pSeg->pgnoFirst;
    bDlidx = 0;
  }

  pIter->iLeafPgno = iPg - 1;
  fts5SegIterNextPage(p, pIter);

  if( pIter->pLeaf ){
    fts5LeafSeek(p, bGe, pIter, pTerm, nTerm);
  }

  if( p->rc==SQLITE_OK && bGe==0 ){
    pIter->flags |= FTS5_SEGITER_ONETERM;
    if( pIter->pLeaf ){
      if( flags & FTS5INDEX_QUERY_DESC ){
        pIter->flags |= FTS5_SEGITER_REVERSE;
      }
      if( bDlidx ){
        fts5SegIterLoadDlidx(p, pIter);
      }
      if( flags & FTS5INDEX_QUERY_DESC ){
        fts5SegIterReverse(p, pIter);
      }
    }
  }

  fts5SegIterSetNext(p, pIter);
  assert_nc( p->rc!=SQLITE_OK
   || pIter->pLeaf==0
   || fts5BufferCompareBlob(&pIter->term, pTerm, nTerm)==0
   || (bGe && fts5BufferCompareBlob(&pIter->term, pTerm, nTerm)>0)
  );
}
