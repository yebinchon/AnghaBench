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
typedef  int /*<<< orphan*/  sqlite3_str ;
struct TYPE_3__ {int /*<<< orphan*/ * aLimit; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 int /*<<< orphan*/  SQLITE_MAX_LENGTH ; 
 int /*<<< orphan*/  sqlite3OomStr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

sqlite3_str *FUNC2(sqlite3 *db){
  sqlite3_str *p = FUNC1(sizeof(*p));
  if( p ){
    FUNC0(p, 0, 0, 0,
            db ? db->aLimit[SQLITE_LIMIT_LENGTH] : SQLITE_MAX_LENGTH);
  }else{
    p = &sqlite3OomStr;
  }
  return p;
}