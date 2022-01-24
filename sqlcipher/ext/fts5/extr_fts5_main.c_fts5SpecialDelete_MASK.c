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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_3__ {int /*<<< orphan*/  pStorage; } ;
typedef  TYPE_1__ Fts5FullTable ;

/* Variables and functions */
 int SQLITE_INTEGER ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
  Fts5FullTable *pTab, 
  sqlite3_value **apVal
){
  int rc = SQLITE_OK;
  int eType1 = FUNC2(apVal[1]);
  if( eType1==SQLITE_INTEGER ){
    sqlite3_int64 iDel = FUNC1(apVal[1]);
    rc = FUNC0(pTab->pStorage, iDel, &apVal[2]);
  }
  return rc;
}