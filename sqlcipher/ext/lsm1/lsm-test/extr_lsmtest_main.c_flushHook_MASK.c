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
struct TYPE_3__ {int nData; int /*<<< orphan*/  pOut; scalar_t__ iOff; scalar_t__ bLog; } ;
typedef  TYPE_1__ InsertWriteHook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int) ; 

__attribute__((used)) static void FUNC2(InsertWriteHook *pHook){
  if( pHook->nData ){
    FUNC1(pHook->pOut, "write %s %d %d\n", 
        (pHook->bLog ? "log" : "db"), (int)pHook->iOff, pHook->nData
    );
    pHook->nData = 0;
    FUNC0(pHook->pOut);
  }
}