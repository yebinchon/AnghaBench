
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; TYPE_1__ member_0; } ;
typedef TYPE_2__ Datatest1 ;


 int ArraySize (TYPE_2__*) ;
 int DATA_RANDOM ;
 int DATA_SEQUENTIAL ;
 int LSM_OK ;
 int doDataTest1 (char const*,int,TYPE_2__*,int*) ;
 char* getName (char const*,int,TYPE_2__*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 scalar_t__ testCaseBegin (int*,char const*,char*,char*) ;
 int testFree (char*) ;

void test_data_1(
  const char *zSystem,
  const char *zPattern,
  int *pRc
){
  Datatest1 aTest[] = {
    { {DATA_RANDOM, 500,600, 1000,2000}, 1000, 100, 10, 0},
    { {DATA_RANDOM, 20,25, 100,200}, 1000, 250, 1000, 1},
    { {DATA_RANDOM, 8,10, 100,200}, 1000, 250, 1000, 1},
    { {DATA_RANDOM, 8,10, 10,20}, 1000, 250, 1000, 1},
    { {DATA_RANDOM, 8,10, 1000,2000}, 1000, 250, 1000, 1},
    { {DATA_RANDOM, 8,100, 10000,20000}, 100, 25, 100, 1},
    { {DATA_RANDOM, 80,100, 10,20}, 1000, 250, 1000, 1},
    { {DATA_RANDOM, 5000,6000, 10,20}, 100, 25, 100, 1},
    { {DATA_SEQUENTIAL, 5,10, 10,20}, 1000, 250, 1000, 1},
    { {DATA_SEQUENTIAL, 5,10, 100,200}, 1000, 250, 1000, 1},
    { {DATA_SEQUENTIAL, 5,10, 1000,2000}, 1000, 250, 1000, 1},
    { {DATA_SEQUENTIAL, 5,100, 10000,20000}, 100, 25, 100, 1},
    { {DATA_RANDOM, 10,10, 100,100}, 100000, 1000, 100, 0},
    { {DATA_SEQUENTIAL, 10,10, 100,100}, 100000, 1000, 100, 0},
  };

  int i;
  int bRecover;

  for(bRecover=0; bRecover<2; bRecover++){
    if( bRecover==1 && memcmp(zSystem, "lsm", 3) ) break;
    for(i=0; *pRc==LSM_OK && i<ArraySize(aTest); i++){
      char *zName = getName(zSystem, bRecover, &aTest[i]);
      if( testCaseBegin(pRc, zPattern, "%s", zName) ){
        doDataTest1(zSystem, bRecover, &aTest[i], pRc);
      }
      testFree(zName);
    }
  }
}
