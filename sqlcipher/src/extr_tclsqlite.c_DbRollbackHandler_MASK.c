#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  interp; int /*<<< orphan*/  pRollbackHook; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 scalar_t__ TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *clientData){
  SqliteDb *pDb = (SqliteDb*)clientData;
  FUNC2(pDb->pRollbackHook);
  if( TCL_OK!=FUNC1(pDb->interp, pDb->pRollbackHook, 0) ){
    FUNC0(pDb->interp);
  }
}