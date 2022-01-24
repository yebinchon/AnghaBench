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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int rc; } ;
typedef  TYPE_1__ RtreeCheck ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(RtreeCheck *pCheck, sqlite3_stmt *pStmt){
  int rc = FUNC0(pStmt);
  if( pCheck->rc==SQLITE_OK ) pCheck->rc = rc;
}