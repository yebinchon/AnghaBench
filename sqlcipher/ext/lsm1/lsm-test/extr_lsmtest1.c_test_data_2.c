
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
struct TYPE_7__ {int member_1; int member_2; int member_3; TYPE_1__ member_0; } ;
typedef TYPE_2__ Datatest2 ;


 int ArraySize (TYPE_2__*) ;
 int DATA_RANDOM ;
 int LSM_OK ;
 int doDataTest2 (char const*,int,TYPE_2__*,int*) ;
 char* getName2 (char const*,int,TYPE_2__*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 scalar_t__ testCaseBegin (int*,char const*,char*,char*) ;
 int testFree (char*) ;

void test_data_2(
  const char *zSystem,
  const char *zPattern,
  int *pRc
){
  Datatest2 aTest[] = {

    { {DATA_RANDOM, 20,25, 100,200}, 10000, 10, 50 },
    { {DATA_RANDOM, 20,25, 100,200}, 10000, 200, 50 },
    { {DATA_RANDOM, 20,25, 100,200}, 100, 10, 1000 },
    { {DATA_RANDOM, 20,25, 100,200}, 100, 200, 50 },
  };

  int i;
  int bRecover;

  for(bRecover=0; bRecover<2; bRecover++){
    if( bRecover==1 && memcmp(zSystem, "lsm", 3) ) break;
    for(i=0; *pRc==LSM_OK && i<ArraySize(aTest); i++){
      char *zName = getName2(zSystem, bRecover, &aTest[i]);
      if( testCaseBegin(pRc, zPattern, "%s", zName) ){
        doDataTest2(zSystem, bRecover, &aTest[i], pRc);
      }
      testFree(zName);
    }
  }
}
