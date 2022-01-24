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
struct TYPE_3__ {int /*<<< orphan*/  pEnv; int /*<<< orphan*/  zDb; scalar_t__ fdLog; } ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC4(FileSystem *pFS){
  char *zDel;

  if( pFS->fdLog ){
    FUNC0(pFS->pEnv, pFS->fdLog );
    pFS->fdLog = 0;
  }

  zDel = FUNC3(pFS->pEnv, "%s-log", pFS->zDb);
  if( zDel ){
    FUNC1(pFS->pEnv, zDel);
    FUNC2(pFS->pEnv, zDel);
  }
  return LSM_OK;
}