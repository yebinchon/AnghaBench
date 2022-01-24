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
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_2__ {scalar_t__* nowValue; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* statMutex ; 
 TYPE_1__ wsdStat ; 
 int /*<<< orphan*/  wsdStatInit ; 

sqlite3_int64 FUNC5(int op){
  wsdStatInit;
  FUNC1( op>=0 && op<FUNC0(wsdStat.nowValue) );
  FUNC1( op>=0 && op<FUNC0(statMutex) );
  FUNC1( FUNC4(statMutex[op] ? FUNC3()
                                           : FUNC2()) );
  return wsdStat.nowValue[op];
}