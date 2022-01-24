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
struct TYPE_4__ {int /*<<< orphan*/  zName; scalar_t__ pSelect; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(Parse *pParse, Table *pTab, int viewOk){
  if( FUNC1(pParse, pTab) ){
    FUNC0(pParse, "table %s may not be modified", pTab->zName);
    return 1;
  }
#ifndef SQLITE_OMIT_VIEW
  if( !viewOk && pTab->pSelect ){
    FUNC0(pParse,"cannot modify %s because it is a view",pTab->zName);
    return 1;
  }
#endif
  return 0;
}