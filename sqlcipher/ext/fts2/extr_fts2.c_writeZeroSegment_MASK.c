#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  fts2HashElem ;
typedef  int /*<<< orphan*/  fts2Hash ;
struct TYPE_10__ {int /*<<< orphan*/  nTerm; int /*<<< orphan*/  pTerm; int /*<<< orphan*/  pCollector; } ;
typedef  TYPE_1__ TermData ;
struct TYPE_11__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
typedef  int /*<<< orphan*/  LeafWriter ;
typedef  TYPE_2__ DataBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (int) ; 
 int /*<<< orphan*/  termDataCmp ; 

__attribute__((used)) static int FUNC19(fulltext_vtab *v, fts2Hash *pTerms){
  fts2HashElem *e;
  int idx, rc, i, n;
  TermData *pData;
  LeafWriter writer;
  DataBuffer dl;

  /* Determine the next index at level 0, merging as necessary. */
  rc = FUNC16(v, 0, &idx);
  if( rc!=SQLITE_OK ) return rc;

  n = FUNC5(pTerms);
  pData = FUNC18(n*sizeof(TermData));

  for(i = 0, e = FUNC7(pTerms); e; i++, e = FUNC10(e)){
    FUNC0( i<n );
    pData[i].pTerm = FUNC8(e);
    pData[i].nTerm = FUNC9(e);
    pData[i].pCollector = FUNC6(e);
  }
  FUNC0( i==n );

  /* TODO(shess) Should we allow user-defined collation sequences,
  ** here?  I think we only need that once we support prefix searches.
  */
  if( n>1 ) FUNC15(pData, n, sizeof(*pData), termDataCmp);

  /* TODO(shess) Refactor so that we can write directly to the segment
  ** DataBuffer, as happens for segment merges.
  */
  FUNC13(0, idx, &writer);
  FUNC2(&dl, 0);
  for(i=0; i<n; i++){
    FUNC3(&dl);
    FUNC4(pData[i].pCollector, &dl);
    rc = FUNC14(v, &writer,
                        pData[i].pTerm, pData[i].nTerm, dl.pData, dl.nData);
    if( rc!=SQLITE_OK ) goto err;
  }
  rc = FUNC12(v, &writer);

 err:
  FUNC1(&dl);
  FUNC17(pData);
  FUNC11(&writer);
  return rc;
}