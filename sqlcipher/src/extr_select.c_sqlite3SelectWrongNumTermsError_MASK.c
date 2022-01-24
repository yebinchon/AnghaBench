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
struct TYPE_3__ {int selFlags; int /*<<< orphan*/  op; } ;
typedef  TYPE_1__ Select ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int SF_Values ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC2(Parse *pParse, Select *p){
  if( p->selFlags & SF_Values ){
    FUNC1(pParse, "all VALUES must have the same number of terms");
  }else{
    FUNC1(pParse, "SELECTs to the left and right of %s"
      " do not have the same number of result columns", FUNC0(p->op));
  }
}