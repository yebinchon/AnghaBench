#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(sqlite3_context *pCtx, int nVal, sqlite3_value **apVal){
  int *aMatchinfo;                /* Return value of matchinfo() */
  int nMatchinfo;                 /* Number of elements in aMatchinfo[] */
  int nCol = 0;                   /* Number of columns in the table */
  int nPhrase = 0;                /* Number of phrases in the query */
  int iPhrase;                    /* Current phrase */
  double score = 0.0;             /* Value to return */

  FUNC0( sizeof(int)==4 );

  /* Check that the number of arguments passed to this function is correct.
  ** If not, jump to wrong_number_args. Set aMatchinfo to point to the array
  ** of unsigned integer values returned by FTS function matchinfo. Set
  ** nPhrase to contain the number of reportable phrases in the users full-text
  ** query, and nCol to the number of columns in the table. Then check that the
  ** size of the matchinfo blob is as expected. Return an error if it is not.
  */
  if( nVal<1 ) goto wrong_number_args;
  aMatchinfo = (int*)FUNC3(apVal[0]);
  nMatchinfo = FUNC4(apVal[0]) / sizeof(int);
  if( nMatchinfo>=2 ){
    nPhrase = aMatchinfo[0];
    nCol = aMatchinfo[1];
  }
  if( nMatchinfo!=(2+3*nCol*nPhrase) ){
    FUNC2(pCtx,
        "invalid matchinfo blob passed to function rank()", -1);
    return;
  }
  if( nVal!=(1+nCol) ) goto wrong_number_args;

  /* Iterate through each phrase in the users query. */
  for(iPhrase=0; iPhrase<nPhrase; iPhrase++){
    int iCol;                     /* Current column */

    /* Now iterate through each column in the users query. For each column,
    ** increment the relevancy score by:
    **
    **   (<hit count> / <global hit count>) * <column weight>
    **
    ** aPhraseinfo[] points to the start of the data for phrase iPhrase. So
    ** the hit count and global hit counts for each column are found in 
    ** aPhraseinfo[iCol*3] and aPhraseinfo[iCol*3+1], respectively.
    */
    int *aPhraseinfo = &aMatchinfo[2 + iPhrase*nCol*3];
    for(iCol=0; iCol<nCol; iCol++){
      int nHitCount = aPhraseinfo[3*iCol];
      int nGlobalHitCount = aPhraseinfo[3*iCol+1];
      double weight = FUNC5(apVal[iCol+1]);
      if( nHitCount>0 ){
        score += ((double)nHitCount / (double)nGlobalHitCount) * weight;
      }
    }
  }

  FUNC1(pCtx, score);
  return;

  /* Jump here if the wrong number of arguments are passed to this function */
wrong_number_args:
  FUNC2(pCtx, "wrong number of arguments to function rank()", -1);
}