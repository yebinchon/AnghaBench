
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
typedef TYPE_1__ Datatest3 ;


 int ArraySize (TYPE_1__*) ;
 int LSM_OK ;
 int doDataTest3 (char const*,TYPE_1__*,int*) ;
 char* getName3 (char const*,TYPE_1__*) ;
 scalar_t__ testCaseBegin (int*,char const*,char*,char*) ;
 int testFree (char*) ;

void test_data_3(
  const char *zSystem,
  const char *zPattern,
  int *pRc
){
  Datatest3 aTest[] = {

    { 100, 1000, 5, 5, 50, 100 },
    { 100, 1000, 2, 2, 5, 10 },
  };

  int i;

  for(i=0; *pRc==LSM_OK && i<ArraySize(aTest); i++){
    char *zName = getName3(zSystem, &aTest[i]);
    if( testCaseBegin(pRc, zPattern, "%s", zName) ){
      doDataTest3(zSystem, &aTest[i], pRc);
    }
    testFree(zName);
  }
}
