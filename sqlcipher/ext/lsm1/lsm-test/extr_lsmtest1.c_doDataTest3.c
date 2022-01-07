
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int aKey2 ;
typedef int aKey1 ;
typedef int aKey ;
typedef int TestDb ;
struct TYPE_3__ {int nRange; int nValMax; int nIter; int nWrite; int nValMin; int nDelete; } ;
typedef TYPE_1__ Datatest3 ;


 int dt3PutKey (int*,int) ;
 int tdb_fetch (int *,int*,int,void**,int*) ;
 int testCaseFinish (int) ;
 int testCaseNDot () ;
 int testCaseProgress (int,int,int ,int*) ;
 int testClose (int **) ;
 int testCompareInt (int,int,int*) ;
 int testDeleteRange (int *,int*,int,int*,int,int*) ;
 scalar_t__ testMalloc (int) ;
 int * testOpen (char const*,int,int*) ;
 int testPrngString (int,char*,int) ;
 int testPrngValue (int ) ;
 int testReopen (int **,int*) ;
 int testWrite (int *,int*,int,char*,int,int*) ;

__attribute__((used)) static void doDataTest3(
  const char *zSystem,
  Datatest3 *p,
  int *pRc
){
  int iDot = 0;
  int rc = *pRc;
  TestDb *pDb;
  u8 *abPresent;
  char *aVal;
  int i;
  u32 iSeq = 10;

  abPresent = (u8 *)testMalloc(p->nRange+1);
  aVal = (char *)testMalloc(p->nValMax+1);
  pDb = testOpen(zSystem, 1, &rc);

  for(i=0; i<p->nIter && rc==0; i++){
    int ii;

    testCaseProgress(i, p->nIter, testCaseNDot(), &iDot);


    for(ii=0; ii<p->nWrite; ii++){
      u8 aKey[6];
      u32 iKey;
      int nVal;

      iKey = (testPrngValue(iSeq++) % p->nRange) + 1;
      nVal = (testPrngValue(iSeq++) % (p->nValMax - p->nValMin)) + p->nValMin;
      testPrngString(testPrngValue(iSeq++), aVal, nVal);
      dt3PutKey(aKey, iKey);

      testWrite(pDb, aKey, sizeof(aKey)-1, aVal, nVal, &rc);
      abPresent[iKey] = 1;
    }


    for(ii=0; ii<p->nDelete; ii++){
      u8 aKey1[6];
      u8 aKey2[6];
      u32 iKey;

      iKey = (testPrngValue(iSeq++) % p->nRange) + 1;
      dt3PutKey(aKey1, iKey-1);
      dt3PutKey(aKey2, iKey+1);

      testDeleteRange(pDb, aKey1, sizeof(aKey1)-1, aKey2, sizeof(aKey2)-1, &rc);
      abPresent[iKey] = 0;
    }

    testReopen(&pDb, &rc);

    for(ii=1; rc==0 && ii<=p->nRange; ii++){
      int nDbVal;
      void *pDbVal;
      u8 aKey[6];
      int dbrc;

      dt3PutKey(aKey, ii);
      dbrc = tdb_fetch(pDb, aKey, sizeof(aKey)-1, &pDbVal, &nDbVal);
      testCompareInt(0, dbrc, &rc);

      if( abPresent[ii] ){
        testCompareInt(1, (nDbVal>0), &rc);
      }else{
        testCompareInt(1, (nDbVal<0), &rc);
      }
    }
  }

  testClose(&pDb);
  testCaseFinish(rc);
  *pRc = rc;
}
