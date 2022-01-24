#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 

void FUNC5(TestDb **ppDb, int *pRc){
  if( *pRc==0 ){
    const char *zLib = FUNC1(*ppDb);
    const char *zDflt = FUNC0(zLib);
    FUNC4(zDflt, "bak.db");
    FUNC3(ppDb);
    FUNC4("bak.db", zDflt);
    *pRc = FUNC2(zLib, 0, 0, ppDb);
  }
}