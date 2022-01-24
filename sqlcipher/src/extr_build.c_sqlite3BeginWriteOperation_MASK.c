#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int isMultiWrite; int /*<<< orphan*/  writeMask; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

void FUNC3(Parse *pParse, int setStatement, int iDb){
  Parse *pToplevel = FUNC2(pParse);
  FUNC1(pParse, iDb);
  FUNC0(pToplevel->writeMask, iDb);
  pToplevel->isMultiWrite |= setStatement;
}