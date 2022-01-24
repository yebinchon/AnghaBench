#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nIter; int /*<<< orphan*/  nWrite; int /*<<< orphan*/  nRange; int /*<<< orphan*/  defn; } ;
typedef  TYPE_1__ Datatest2 ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(const char *zSystem, int bRecover, Datatest2 *pTest){
  char *zRet;
  char *zData;
  zData = FUNC0(&pTest->defn);
  zRet = FUNC2("data2.%s.%s.rec=%d.%d.%d.%d", 
      zSystem, zData, bRecover, pTest->nRange, pTest->nWrite, pTest->nIter
  );
  FUNC1(zData);
  return zRet;
}