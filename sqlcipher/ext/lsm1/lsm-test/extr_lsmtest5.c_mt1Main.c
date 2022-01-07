
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aValue ;
typedef int aRnd ;
typedef int ThreadSet ;
typedef int TestDb ;
struct TYPE_7__ {int nKey; } ;
struct TYPE_6__ {int nMs; int * pSet; } ;
struct TYPE_5__ {int nReadwrite; int nFastReader; int nMs; TYPE_3__ param; int zSystem; } ;
typedef TYPE_1__ Mt1Test ;
typedef TYPE_2__ Mt1DelayCtx ;


 int MT1_THREAD_FAST ;
 int MT1_THREAD_RDWR ;
 int MT1_THREAD_SLOW ;
 int dbReadOperation (TYPE_3__*,int *,int ,void*,int,int*) ;
 scalar_t__ dbWriteOperation (TYPE_3__*,int *,int,char*,int*) ;
 int snprintf (char*,int,char*,int,char*) ;
 int tdb_lsm_config_work_hook (int *,int ,int ) ;
 int testClose (int **) ;
 int * testOpen (int ,int ,int*) ;
 int testPrngString (int,char*,int) ;
 int testPrngValue (int) ;
 scalar_t__ testThreadGetHalt (int *) ;
 int testThreadSetHalt (int *) ;
 int testThreadSetResult (int *,int,int,char*,...) ;
 int xMt1Delay ;
 int xMt1Work ;

__attribute__((used)) static void mt1Main(ThreadSet *pThreadSet, int iThread, void *pCtx){
  Mt1Test *p = (Mt1Test *)pCtx;
  Mt1DelayCtx delay;
  int nRead = 0;
  int nWrite = 0;
  int rc = 0;
  int iPrng;
  TestDb *pDb;
  int eType;

  delay.pSet = pThreadSet;
  delay.nMs = 0;
  if( iThread<p->nReadwrite ){
    eType = MT1_THREAD_RDWR;
  }else if( iThread<(p->nReadwrite+p->nFastReader) ){
    eType = MT1_THREAD_FAST;
  }else{
    eType = MT1_THREAD_SLOW;
    delay.nMs = (p->nMs / 20);
  }



  iPrng = testPrngValue(iThread);
  pDb = testOpen(p->zSystem, 0, &rc);

  if( rc==0 ){
    tdb_lsm_config_work_hook(pDb, xMt1Work, 0);
  }



  while( rc==0 && testThreadGetHalt(pThreadSet)==0 ){
    int iKey;


    iKey = (testPrngValue(iPrng++) % p->param.nKey);
    dbReadOperation(&p->param, pDb, xMt1Delay, (void *)&delay, iKey, &rc);
    if( rc ) continue;
    nRead++;




    if( eType==MT1_THREAD_RDWR ){
      char aValue[50];
      char aRnd[25];

      iKey = (testPrngValue(iPrng++) % p->param.nKey);
      testPrngString(iPrng, aRnd, sizeof(aRnd));
      iPrng += sizeof(aRnd);
      snprintf(aValue, sizeof(aValue), "%d.%s", iThread, aRnd);
      nWrite += dbWriteOperation(&p->param, pDb, iKey, aValue, &rc);
    }
  }
  testClose(&pDb);





  if( rc ){
    testThreadSetResult(pThreadSet, iThread, rc, 0);
    testThreadSetHalt(pThreadSet);
  }else{
    testThreadSetResult(pThreadSet, iThread, 0, "r/w: %d/%d", nRead, nWrite);
  }
}
