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
typedef  scalar_t__ sqlite3StatValueType ;
struct TYPE_2__ {scalar_t__* mxValue; scalar_t__* nowValue; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int SQLITE_STATUS_MALLOC_SIZE ; 
 int SQLITE_STATUS_PAGECACHE_SIZE ; 
 int SQLITE_STATUS_PARSER_STACK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* statMutex ; 
 TYPE_1__ wsdStat ; 
 int /*<<< orphan*/  wsdStatInit ; 

void FUNC5(int op, int X){
  sqlite3StatValueType newValue;
  wsdStatInit;
  FUNC1( X>=0 );
  newValue = (sqlite3StatValueType)X;
  FUNC1( op>=0 && op<FUNC0(wsdStat.nowValue) );
  FUNC1( op>=0 && op<FUNC0(statMutex) );
  FUNC1( FUNC4(statMutex[op] ? FUNC3()
                                           : FUNC2()) );
  FUNC1( op==SQLITE_STATUS_MALLOC_SIZE
          || op==SQLITE_STATUS_PAGECACHE_SIZE
          || op==SQLITE_STATUS_PARSER_STACK );
  if( newValue>wsdStat.mxValue[op] ){
    wsdStat.mxValue[op] = newValue;
  }
}