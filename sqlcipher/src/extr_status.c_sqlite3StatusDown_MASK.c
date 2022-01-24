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
struct TYPE_2__ {int* nowValue; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int* statMutex ; 
 TYPE_1__ wsdStat ; 
 int /*<<< orphan*/  wsdStatInit ; 

void FUNC5(int op, int N){
  wsdStatInit;
  FUNC1( N>=0 );
  FUNC1( op>=0 && op<FUNC0(statMutex) );
  FUNC1( FUNC4(statMutex[op] ? FUNC3()
                                           : FUNC2()) );
  FUNC1( op>=0 && op<FUNC0(wsdStat.nowValue) );
  wsdStat.nowValue[op] -= N;
}