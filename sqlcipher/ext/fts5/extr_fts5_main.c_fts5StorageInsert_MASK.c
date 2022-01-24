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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_3__ {int /*<<< orphan*/  pStorage; } ;
typedef  TYPE_1__ Fts5FullTable ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
  int *pRc, 
  Fts5FullTable *pTab, 
  sqlite3_value **apVal, 
  i64 *piRowid
){
  int rc = *pRc;
  if( rc==SQLITE_OK ){
    rc = FUNC0(pTab->pStorage, apVal, piRowid);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC1(pTab->pStorage, apVal, *piRowid);
  }
  *pRc = rc;
}