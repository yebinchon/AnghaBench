#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aValue ;
typedef  int /*<<< orphan*/  aRnd ;
typedef  int /*<<< orphan*/  ThreadSet ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_7__ {int nKey; } ;
struct TYPE_6__ {int nMs; int /*<<< orphan*/ * pSet; } ;
struct TYPE_5__ {int nReadwrite; int nFastReader; int nMs; TYPE_3__ param; int /*<<< orphan*/  zSystem; } ;
typedef  TYPE_1__ Mt1Test ;
typedef  TYPE_2__ Mt1DelayCtx ;

/* Variables and functions */
 int MT1_THREAD_FAST ; 
 int MT1_THREAD_RDWR ; 
 int MT1_THREAD_SLOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int,int*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,char*,...) ; 
 int /*<<< orphan*/  xMt1Delay ; 
 int /*<<< orphan*/  xMt1Work ; 

__attribute__((used)) static void FUNC11(ThreadSet *pThreadSet, int iThread, void *pCtx){
  Mt1Test *p = (Mt1Test *)pCtx;   /* Test parameters */
  Mt1DelayCtx delay;
  int nRead = 0;                  /* Number of calls to dbReadOperation() */
  int nWrite = 0;                 /* Number of completed database writes */
  int rc = 0;                     /* Error code */
  int iPrng;                      /* Prng argument variable */
  TestDb *pDb;                    /* Database handle */
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

  /* Open a new database connection. Initialize the pseudo-random number
  ** argument based on the thread number.  */
  iPrng = FUNC7(iThread);
  pDb = FUNC5(p->zSystem, 0, &rc);

  if( rc==0 ){
    FUNC3(pDb, xMt1Work, 0);
  }

  /* Loop until either an error occurs or some other thread sets the
  ** halt flag.  */
  while( rc==0 && FUNC8(pThreadSet)==0 ){
    int iKey;

    /* Perform a read operation on an arbitrarily selected key. */
    iKey = (FUNC7(iPrng++) % p->param.nKey);
    FUNC0(&p->param, pDb, xMt1Delay, (void *)&delay, iKey, &rc);
    if( rc ) continue;
    nRead++;

    /* Attempt to write an arbitrary key value pair (and update the associated
    ** checksum entries). dbWriteOperation() returns 1 if the write is
    ** successful, or 0 if it failed with an LSM_BUSY error.  */
    if( eType==MT1_THREAD_RDWR ){
      char aValue[50];
      char aRnd[25];

      iKey = (FUNC7(iPrng++) % p->param.nKey);
      FUNC6(iPrng, aRnd, sizeof(aRnd));
      iPrng += sizeof(aRnd);
      FUNC2(aValue, sizeof(aValue), "%d.%s", iThread, aRnd);
      nWrite += FUNC1(&p->param, pDb, iKey, aValue, &rc);
    }
  }
  FUNC4(&pDb);

  /* If an error has occured, set the thread error code and the threadset 
  ** halt flag to tell the other test threads to halt. Otherwise, set the
  ** thread error code to 0 and post a message with the number of read
  ** and write operations completed.  */
  if( rc ){
    FUNC10(pThreadSet, iThread, rc, 0);
    FUNC9(pThreadSet);
  }else{
    FUNC10(pThreadSet, iThread, 0, "r/w: %d/%d", nRead, nWrite);
  }
}