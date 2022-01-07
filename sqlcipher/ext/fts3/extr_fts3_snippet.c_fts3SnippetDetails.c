
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int iCurrent; int nPhrase; int nSnippet; TYPE_1__* aPhrase; } ;
struct TYPE_4__ {char* pTail; int iTail; int nToken; } ;
typedef TYPE_1__ SnippetPhrase ;
typedef TYPE_2__ SnippetIter ;


 int assert (int) ;
 int fts3GetDeltaPosition (char**,int*) ;

__attribute__((used)) static void fts3SnippetDetails(
  SnippetIter *pIter,
  u64 mCovered,
  int *piToken,
  int *piScore,
  u64 *pmCover,
  u64 *pmHighlight
){
  int iStart = pIter->iCurrent;
  int iScore = 0;
  int i;
  u64 mCover = 0;
  u64 mHighlight = 0;

  for(i=0; i<pIter->nPhrase; i++){
    SnippetPhrase *pPhrase = &pIter->aPhrase[i];
    if( pPhrase->pTail ){
      char *pCsr = pPhrase->pTail;
      int iCsr = pPhrase->iTail;

      while( iCsr<(iStart+pIter->nSnippet) && iCsr>=iStart ){
        int j;
        u64 mPhrase = (u64)1 << i;
        u64 mPos = (u64)1 << (iCsr - iStart);
        assert( iCsr>=iStart && (iCsr - iStart)<=64 );
        assert( i>=0 && i<=64 );
        if( (mCover|mCovered)&mPhrase ){
          iScore++;
        }else{
          iScore += 1000;
        }
        mCover |= mPhrase;

        for(j=0; j<pPhrase->nToken; j++){
          mHighlight |= (mPos>>j);
        }

        if( 0==(*pCsr & 0x0FE) ) break;
        fts3GetDeltaPosition(&pCsr, &iCsr);
      }
    }
  }


  *piToken = iStart;
  *piScore = iScore;
  *pmCover = mCover;
  *pmHighlight = mHighlight;
}
