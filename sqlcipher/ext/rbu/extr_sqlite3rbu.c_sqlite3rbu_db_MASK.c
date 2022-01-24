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
struct TYPE_3__ {int /*<<< orphan*/ * dbMain; int /*<<< orphan*/ * dbRbu; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */

sqlite3 *FUNC0(sqlite3rbu *pRbu, int bRbu){
  sqlite3 *db = 0;
  if( pRbu ){
    db = (bRbu ? pRbu->dbRbu : pRbu->dbMain);
  }
  return db;
}