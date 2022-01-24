#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {char** aaOutput; int* anOutput; } ;
typedef  TYPE_1__ TermSelect ;
struct TYPE_23__ {int /*<<< orphan*/  nDoclist; int /*<<< orphan*/  aDoclist; } ;
struct TYPE_22__ {TYPE_5__* pSegcsr; int /*<<< orphan*/  n; int /*<<< orphan*/  z; scalar_t__ bFirst; scalar_t__ isPrefix; } ;
struct TYPE_21__ {int flags; int iCol; int /*<<< orphan*/  nTerm; int /*<<< orphan*/  zTerm; } ;
struct TYPE_20__ {int nColumn; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3SegFilter ;
typedef  TYPE_4__ Fts3PhraseToken ;
typedef  TYPE_5__ Fts3MultiSegReader ;

/* Variables and functions */
 int FTS3_SEGMENT_COLUMN_FILTER ; 
 int FTS3_SEGMENT_FIRST ; 
 int FTS3_SEGMENT_IGNORE_EMPTY ; 
 int FTS3_SEGMENT_PREFIX ; 
 int FTS3_SEGMENT_REQUIRE_POS ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*,TYPE_5__*,TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(
  Fts3Table *p,                   /* Virtual table handle */
  Fts3PhraseToken *pTok,          /* Token to query for */
  int iColumn,                    /* Column to query (or -ve for all columns) */
  int *pnOut,                     /* OUT: Size of buffer at *ppOut */
  char **ppOut                    /* OUT: Malloced result buffer */
){
  int rc;                         /* Return code */
  Fts3MultiSegReader *pSegcsr;    /* Seg-reader cursor for this term */
  TermSelect tsc;                 /* Object for pair-wise doclist merging */
  Fts3SegFilter filter;           /* Segment term filter configuration */

  pSegcsr = pTok->pSegcsr;
  FUNC4(&tsc, 0, sizeof(TermSelect));

  filter.flags = FTS3_SEGMENT_IGNORE_EMPTY | FTS3_SEGMENT_REQUIRE_POS
        | (pTok->isPrefix ? FTS3_SEGMENT_PREFIX : 0)
        | (pTok->bFirst ? FTS3_SEGMENT_FIRST : 0)
        | (iColumn<p->nColumn ? FTS3_SEGMENT_COLUMN_FILTER : 0);
  filter.iCol = iColumn;
  filter.zTerm = pTok->z;
  filter.nTerm = pTok->n;

  rc = FUNC5(p, pSegcsr, &filter);
  while( SQLITE_OK==rc
      && SQLITE_ROW==(rc = FUNC6(p, pSegcsr)) 
  ){
    rc = FUNC3(p, &tsc, pSegcsr->aDoclist, pSegcsr->nDoclist);
  }

  if( rc==SQLITE_OK ){
    rc = FUNC2(p, &tsc);
  }
  if( rc==SQLITE_OK ){
    *ppOut = tsc.aaOutput[0];
    *pnOut = tsc.anOutput[0];
  }else{
    int i;
    for(i=0; i<FUNC0(tsc.aaOutput); i++){
      FUNC7(tsc.aaOutput[i]);
    }
  }

  FUNC1(pSegcsr);
  pTok->pSegcsr = 0;
  return rc;
}