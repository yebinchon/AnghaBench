
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {char** aaOutput; int* anOutput; } ;
typedef TYPE_1__ TermSelect ;
struct TYPE_23__ {int nDoclist; int aDoclist; } ;
struct TYPE_22__ {TYPE_5__* pSegcsr; int n; int z; scalar_t__ bFirst; scalar_t__ isPrefix; } ;
struct TYPE_21__ {int flags; int iCol; int nTerm; int zTerm; } ;
struct TYPE_20__ {int nColumn; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3SegFilter ;
typedef TYPE_4__ Fts3PhraseToken ;
typedef TYPE_5__ Fts3MultiSegReader ;


 int FTS3_SEGMENT_COLUMN_FILTER ;
 int FTS3_SEGMENT_FIRST ;
 int FTS3_SEGMENT_IGNORE_EMPTY ;
 int FTS3_SEGMENT_PREFIX ;
 int FTS3_SEGMENT_REQUIRE_POS ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SizeofArray (char**) ;
 int fts3SegReaderCursorFree (TYPE_5__*) ;
 int fts3TermSelectFinishMerge (TYPE_2__*,TYPE_1__*) ;
 int fts3TermSelectMerge (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3Fts3SegReaderStart (TYPE_2__*,TYPE_5__*,TYPE_3__*) ;
 int sqlite3Fts3SegReaderStep (TYPE_2__*,TYPE_5__*) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static int fts3TermSelect(
  Fts3Table *p,
  Fts3PhraseToken *pTok,
  int iColumn,
  int *pnOut,
  char **ppOut
){
  int rc;
  Fts3MultiSegReader *pSegcsr;
  TermSelect tsc;
  Fts3SegFilter filter;

  pSegcsr = pTok->pSegcsr;
  memset(&tsc, 0, sizeof(TermSelect));

  filter.flags = FTS3_SEGMENT_IGNORE_EMPTY | FTS3_SEGMENT_REQUIRE_POS
        | (pTok->isPrefix ? FTS3_SEGMENT_PREFIX : 0)
        | (pTok->bFirst ? FTS3_SEGMENT_FIRST : 0)
        | (iColumn<p->nColumn ? FTS3_SEGMENT_COLUMN_FILTER : 0);
  filter.iCol = iColumn;
  filter.zTerm = pTok->z;
  filter.nTerm = pTok->n;

  rc = sqlite3Fts3SegReaderStart(p, pSegcsr, &filter);
  while( SQLITE_OK==rc
      && SQLITE_ROW==(rc = sqlite3Fts3SegReaderStep(p, pSegcsr))
  ){
    rc = fts3TermSelectMerge(p, &tsc, pSegcsr->aDoclist, pSegcsr->nDoclist);
  }

  if( rc==SQLITE_OK ){
    rc = fts3TermSelectFinishMerge(p, &tsc);
  }
  if( rc==SQLITE_OK ){
    *ppOut = tsc.aaOutput[0];
    *pnOut = tsc.anOutput[0];
  }else{
    int i;
    for(i=0; i<SizeofArray(tsc.aaOutput); i++){
      sqlite3_free(tsc.aaOutput[i]);
    }
  }

  fts3SegReaderCursorFree(pSegcsr);
  pTok->pSegcsr = 0;
  return rc;
}
