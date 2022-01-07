
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_10__ {scalar_t__ bEof; int iStartOff; int * aFile; int pTask; } ;
struct TYPE_9__ {scalar_t__ iReadOff; scalar_t__ iEof; int nKey; int aKey; TYPE_2__* pIncr; } ;
typedef TYPE_1__ PmaReader ;
typedef TYPE_2__ IncrMerger ;


 int SQLITE_OK ;
 int testcase (int) ;
 int vdbeIncrSwap (TYPE_2__*) ;
 int vdbePmaReadBlob (TYPE_1__*,int,int *) ;
 int vdbePmaReadVarint (TYPE_1__*,scalar_t__*) ;
 int vdbePmaReaderClear (TYPE_1__*) ;
 int vdbePmaReaderSeek (int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int vdbePmaReaderNext(PmaReader *pReadr){
  int rc = SQLITE_OK;
  u64 nRec = 0;


  if( pReadr->iReadOff>=pReadr->iEof ){
    IncrMerger *pIncr = pReadr->pIncr;
    int bEof = 1;
    if( pIncr ){
      rc = vdbeIncrSwap(pIncr);
      if( rc==SQLITE_OK && pIncr->bEof==0 ){
        rc = vdbePmaReaderSeek(
            pIncr->pTask, pReadr, &pIncr->aFile[0], pIncr->iStartOff
        );
        bEof = 0;
      }
    }

    if( bEof ){

      vdbePmaReaderClear(pReadr);
      testcase( rc!=SQLITE_OK );
      return rc;
    }
  }

  if( rc==SQLITE_OK ){
    rc = vdbePmaReadVarint(pReadr, &nRec);
  }
  if( rc==SQLITE_OK ){
    pReadr->nKey = (int)nRec;
    rc = vdbePmaReadBlob(pReadr, (int)nRec, &pReadr->aKey);
    testcase( rc!=SQLITE_OK );
  }

  return rc;
}
