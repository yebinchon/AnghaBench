#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sIter ;
struct TYPE_14__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_13__ {int iCol; int iPos; int hlmask; int covered; } ;
struct TYPE_12__ {int iCol; int nSnippet; int nPhrase; int iCurrent; struct TYPE_12__* aPhrase; scalar_t__ pHead; TYPE_4__* pCsr; } ;
typedef  TYPE_1__ SnippetPhrase ;
typedef  TYPE_1__ SnippetIter ;
typedef  TYPE_3__ SnippetFragment ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  fts3SnippetFindPositions ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(
  int nSnippet,                   /* Desired snippet length */
  Fts3Cursor *pCsr,               /* Cursor to create snippet for */
  int iCol,                       /* Index of column to create snippet from */
  u64 mCovered,                   /* Mask of phrases already covered */
  u64 *pmSeen,                    /* IN/OUT: Mask of phrases seen */
  SnippetFragment *pFragment,     /* OUT: Best snippet found */
  int *piScore                    /* OUT: Score of snippet pFragment */
){
  int rc;                         /* Return Code */
  int nList;                      /* Number of phrases in expression */
  SnippetIter sIter;              /* Iterates through snippet candidates */
  sqlite3_int64 nByte;            /* Number of bytes of space to allocate */
  int iBestScore = -1;            /* Best snippet score found so far */
  int i;                          /* Loop counter */

  FUNC5(&sIter, 0, sizeof(sIter));

  /* Iterate through the phrases in the expression to count them. The same
  ** callback makes sure the doclists are loaded for each phrase.
  */
  rc = FUNC2(pCsr, &nList, 0);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  /* Now that it is known how many phrases there are, allocate and zero
  ** the required space using malloc().
  */
  nByte = sizeof(SnippetPhrase) * nList;
  sIter.aPhrase = (SnippetPhrase *)FUNC7(nByte);
  if( !sIter.aPhrase ){
    return SQLITE_NOMEM;
  }
  FUNC5(sIter.aPhrase, 0, nByte);

  /* Initialize the contents of the SnippetIter object. Then iterate through
  ** the set of phrases in the expression to populate the aPhrase[] array.
  */
  sIter.pCsr = pCsr;
  sIter.iCol = iCol;
  sIter.nSnippet = nSnippet;
  sIter.nPhrase = nList;
  sIter.iCurrent = -1;
  rc = FUNC1(pCsr->pExpr, fts3SnippetFindPositions, (void*)&sIter);
  if( rc==SQLITE_OK ){

    /* Set the *pmSeen output variable. */
    for(i=0; i<nList; i++){
      if( sIter.aPhrase[i].pHead ){
        *pmSeen |= (u64)1 << i;
      }
    }

    /* Loop through all candidate snippets. Store the best snippet in 
     ** *pFragment. Store its associated 'score' in iBestScore.
     */
    pFragment->iCol = iCol;
    while( !FUNC4(&sIter) ){
      int iPos;
      int iScore;
      u64 mCover;
      u64 mHighlite;
      FUNC3(&sIter, mCovered, &iPos, &iScore, &mCover,&mHighlite);
      FUNC0( iScore>=0 );
      if( iScore>iBestScore ){
        pFragment->iPos = iPos;
        pFragment->hlmask = mHighlite;
        pFragment->covered = mCover;
        iBestScore = iScore;
      }
    }

    *piScore = iBestScore;
  }
  FUNC6(sIter.aPhrase);
  return rc;
}