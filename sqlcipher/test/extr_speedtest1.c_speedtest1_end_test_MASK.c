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
typedef  int sqlite3_int64 ;
struct TYPE_2__ {int iStart; int iTotal; scalar_t__ pStmt; int /*<<< orphan*/  bSqlOnly; } ;

/* Variables and functions */
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(void){
  sqlite3_int64 iElapseTime = FUNC1() - g.iStart;
  if( !g.bSqlOnly ){
    g.iTotal += iElapseTime;
    FUNC0("%4d.%03ds\n", (int)(iElapseTime/1000), (int)(iElapseTime%1000));
  }
  if( g.pStmt ){
    FUNC2(g.pStmt);
    g.pStmt = 0;
  }
}