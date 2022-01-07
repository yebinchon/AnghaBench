
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ThreadSet ;
typedef int TestDb ;
struct TYPE_6__ {int nKey; int nFanout; } ;
struct TYPE_5__ {int member_0; int member_1; } ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int nReadwrite; int nFastReader; int nSlowReader; char const* zSystem; int nMs; TYPE_2__ param; int member_5; TYPE_1__ member_0; } ;
typedef TYPE_3__ Mt1Test ;


 int ArraySize (TYPE_3__*) ;
 int mt1Main ;
 int printf (char*,int,int,char const*) ;
 int testCaseBegin (int*,char const*,char*,char const*,int ,int ,int ,int,int,int) ;
 int testCaseFinish (int) ;
 int testClose (int **) ;
 int * testOpen (char const*,int,int*) ;
 int testThreadGetResult (int *,int,char const**) ;
 int * testThreadInit (int) ;
 int testThreadLaunch (int *,int,int ,void*) ;
 int testThreadShutdown (int *) ;
 int testThreadWait (int *,int ) ;

__attribute__((used)) static void do_test_mt1(
  const char *zSystem,
  const char *zPattern,
  int *pRc
){
  Mt1Test aTest[] = {

    { {10, 1000}, 4, 0, 0, 10000, 0 },
    { {10, 1000}, 4, 4, 2, 100000, 0 },
    { {10, 100000}, 4, 0, 0, 10000, 0 },
    { {10, 100000}, 4, 4, 2, 100000, 0 },
  };
  int i;

  for(i=0; *pRc==0 && i<ArraySize(aTest); i++){
    Mt1Test *p = &aTest[i];
    int bRun = testCaseBegin(pRc, zPattern,
        "mt1.%s.db=%d,%d.ms=%d.rdwr=%d.fast=%d.slow=%d",
        zSystem, p->param.nFanout, p->param.nKey,
        p->nMs, p->nReadwrite, p->nFastReader, p->nSlowReader
    );
    if( bRun ){
      TestDb *pDb;
      ThreadSet *pSet;
      int iThread;
      int nThread;

      p->zSystem = zSystem;
      pDb = testOpen(zSystem, 1, pRc);

      nThread = p->nReadwrite + p->nFastReader + p->nSlowReader;
      pSet = testThreadInit(nThread);
      for(iThread=0; *pRc==0 && iThread<nThread; iThread++){
        testThreadLaunch(pSet, iThread, mt1Main, (void *)p);
      }

      testThreadWait(pSet, p->nMs);
      for(iThread=0; *pRc==0 && iThread<nThread; iThread++){
        *pRc = testThreadGetResult(pSet, iThread, 0);
      }
      testCaseFinish(*pRc);

      for(iThread=0; *pRc==0 && iThread<nThread; iThread++){
        const char *zMsg = 0;
        *pRc = testThreadGetResult(pSet, iThread, &zMsg);
        printf("  Info: thread %d (%d): %s\n", iThread, *pRc, zMsg);
      }

      testThreadShutdown(pSet);
      testClose(&pDb);
    }
  }
}
