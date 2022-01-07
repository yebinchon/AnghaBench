
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef scalar_t__ i64 ;
typedef int aStatic ;
struct TYPE_20__ {scalar_t__ n; int p; } ;
struct TYPE_19__ {int nPhrase; scalar_t__ nNear; TYPE_4__** apPhrase; } ;
struct TYPE_18__ {scalar_t__ nTerm; TYPE_6__ poslist; } ;
struct TYPE_17__ {scalar_t__ iPos; scalar_t__ iLookahead; } ;
struct TYPE_15__ {scalar_t__ iPrev; } ;
struct TYPE_16__ {TYPE_6__* pOut; TYPE_3__ reader; TYPE_1__ writer; } ;
typedef TYPE_1__ Fts5PoslistWriter ;
typedef TYPE_2__ Fts5NearTrimmer ;
typedef TYPE_3__ Fts5LookaheadReader ;
typedef TYPE_4__ Fts5ExprPhrase ;
typedef TYPE_5__ Fts5ExprNearset ;
typedef TYPE_6__ Fts5Buffer ;


 int ArraySize (TYPE_2__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5LookaheadReaderInit (int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ fts5LookaheadReaderNext (TYPE_3__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 int sqlite3Fts5PoslistWriterAppend (TYPE_6__*,TYPE_1__*,scalar_t__) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int fts5ExprNearIsMatch(int *pRc, Fts5ExprNearset *pNear){
  Fts5NearTrimmer aStatic[4];
  Fts5NearTrimmer *a = aStatic;
  Fts5ExprPhrase **apPhrase = pNear->apPhrase;

  int i;
  int rc = *pRc;
  int bMatch;

  assert( pNear->nPhrase>1 );



  if( pNear->nPhrase>ArraySize(aStatic) ){
    sqlite3_int64 nByte = sizeof(Fts5NearTrimmer) * pNear->nPhrase;
    a = (Fts5NearTrimmer*)sqlite3Fts5MallocZero(&rc, nByte);
  }else{
    memset(aStatic, 0, sizeof(aStatic));
  }
  if( rc!=SQLITE_OK ){
    *pRc = rc;
    return 0;
  }
  for(i=0; i<pNear->nPhrase; i++){
    Fts5Buffer *pPoslist = &apPhrase[i]->poslist;
    fts5LookaheadReaderInit(pPoslist->p, pPoslist->n, &a[i].reader);
    pPoslist->n = 0;
    a[i].pOut = pPoslist;
  }

  while( 1 ){
    int iAdv;
    i64 iMin;
    i64 iMax;



    iMax = a[0].reader.iPos;
    do {
      bMatch = 1;
      for(i=0; i<pNear->nPhrase; i++){
        Fts5LookaheadReader *pPos = &a[i].reader;
        iMin = iMax - pNear->apPhrase[i]->nTerm - pNear->nNear;
        if( pPos->iPos<iMin || pPos->iPos>iMax ){
          bMatch = 0;
          while( pPos->iPos<iMin ){
            if( fts5LookaheadReaderNext(pPos) ) goto ismatch_out;
          }
          if( pPos->iPos>iMax ) iMax = pPos->iPos;
        }
      }
    }while( bMatch==0 );


    for(i=0; i<pNear->nPhrase; i++){
      i64 iPos = a[i].reader.iPos;
      Fts5PoslistWriter *pWriter = &a[i].writer;
      if( a[i].pOut->n==0 || iPos!=pWriter->iPrev ){
        sqlite3Fts5PoslistWriterAppend(a[i].pOut, pWriter, iPos);
      }
    }

    iAdv = 0;
    iMin = a[0].reader.iLookahead;
    for(i=0; i<pNear->nPhrase; i++){
      if( a[i].reader.iLookahead < iMin ){
        iMin = a[i].reader.iLookahead;
        iAdv = i;
      }
    }
    if( fts5LookaheadReaderNext(&a[iAdv].reader) ) goto ismatch_out;
  }

  ismatch_out: {
    int bRet = a[0].pOut->n>0;
    *pRc = rc;
    if( a!=aStatic ) sqlite3_free(a);
    return bRet;
  }
}
