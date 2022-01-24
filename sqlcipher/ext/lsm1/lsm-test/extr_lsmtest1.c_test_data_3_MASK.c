#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
typedef  TYPE_1__ Datatest3 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*,int*) ; 
 char* FUNC2 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(
  const char *zSystem,            /* Database system name */
  const char *zPattern,           /* Run test cases that match this pattern */
  int *pRc                        /* IN/OUT: Error code */
){
  Datatest3 aTest[] = {
    /* nRange, nIter, nWrite, nDelete, nValMin, nValMax */
    {  100,    1000,  5,      5,       50,      100 },
    {  100,    1000,  2,      2,        5,       10 },
  };

  int i;

  for(i=0; *pRc==LSM_OK && i<FUNC0(aTest); i++){
    char *zName = FUNC2(zSystem, &aTest[i]);
    if( FUNC3(pRc, zPattern, "%s", zName) ){
      FUNC1(zSystem, &aTest[i], pRc);
    }
    FUNC4(zName);
  }
}