
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u64 ;
typedef int sqlite3_int64 ;
typedef int sIter ;
struct TYPE_14__ {int pExpr; } ;
struct TYPE_13__ {int iCol; int iPos; int hlmask; int covered; } ;
struct TYPE_12__ {int iCol; int nSnippet; int nPhrase; int iCurrent; struct TYPE_12__* aPhrase; scalar_t__ pHead; TYPE_4__* pCsr; } ;
typedef TYPE_1__ SnippetPhrase ;
typedef TYPE_1__ SnippetIter ;
typedef TYPE_3__ SnippetFragment ;
typedef TYPE_4__ Fts3Cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3ExprIterate (int ,int ,void*) ;
 int fts3ExprLoadDoclists (TYPE_4__*,int*,int ) ;
 int fts3SnippetDetails (TYPE_1__*,int,int*,int*,int*,int*) ;
 int fts3SnippetFindPositions ;
 int fts3SnippetNextCandidate (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts3BestSnippet(
  int nSnippet,
  Fts3Cursor *pCsr,
  int iCol,
  u64 mCovered,
  u64 *pmSeen,
  SnippetFragment *pFragment,
  int *piScore
){
  int rc;
  int nList;
  SnippetIter sIter;
  sqlite3_int64 nByte;
  int iBestScore = -1;
  int i;

  memset(&sIter, 0, sizeof(sIter));




  rc = fts3ExprLoadDoclists(pCsr, &nList, 0);
  if( rc!=SQLITE_OK ){
    return rc;
  }




  nByte = sizeof(SnippetPhrase) * nList;
  sIter.aPhrase = (SnippetPhrase *)sqlite3_malloc64(nByte);
  if( !sIter.aPhrase ){
    return SQLITE_NOMEM;
  }
  memset(sIter.aPhrase, 0, nByte);




  sIter.pCsr = pCsr;
  sIter.iCol = iCol;
  sIter.nSnippet = nSnippet;
  sIter.nPhrase = nList;
  sIter.iCurrent = -1;
  rc = fts3ExprIterate(pCsr->pExpr, fts3SnippetFindPositions, (void*)&sIter);
  if( rc==SQLITE_OK ){


    for(i=0; i<nList; i++){
      if( sIter.aPhrase[i].pHead ){
        *pmSeen |= (u64)1 << i;
      }
    }




    pFragment->iCol = iCol;
    while( !fts3SnippetNextCandidate(&sIter) ){
      int iPos;
      int iScore;
      u64 mCover;
      u64 mHighlite;
      fts3SnippetDetails(&sIter, mCovered, &iPos, &iScore, &mCover,&mHighlite);
      assert( iScore>=0 );
      if( iScore>iBestScore ){
        pFragment->iPos = iPos;
        pFragment->hlmask = mHighlite;
        pFragment->covered = mCover;
        iBestScore = iScore;
      }
    }

    *piScore = iBestScore;
  }
  sqlite3_free(sIter.aPhrase);
  return rc;
}
