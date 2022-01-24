#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nRangeReg; int iRangeReg; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

void FUNC1(Parse *pParse, int iReg, int nReg){
  if( nReg==1 ){
    FUNC0(pParse, iReg);
    return;
  }
  if( nReg>pParse->nRangeReg ){
    pParse->nRangeReg = nReg;
    pParse->iRangeReg = iReg;
  }
}