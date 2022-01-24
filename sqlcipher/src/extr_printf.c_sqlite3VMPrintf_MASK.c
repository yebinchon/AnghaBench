#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zBase ;
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_9__ {int /*<<< orphan*/ * aLimit; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {scalar_t__ accError; int /*<<< orphan*/  printfFlags; } ;
typedef  TYPE_2__ StrAccum ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 scalar_t__ SQLITE_NOMEM ; 
 int /*<<< orphan*/  SQLITE_PRINTF_INTERNAL ; 
 int SQLITE_PRINT_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 

char *FUNC5(sqlite3 *db, const char *zFormat, va_list ap){
  char *z;
  char zBase[SQLITE_PRINT_BUF_SIZE];
  StrAccum acc;
  FUNC0( db!=0 );
  FUNC3(&acc, db, zBase, sizeof(zBase),
                      db->aLimit[SQLITE_LIMIT_LENGTH]);
  acc.printfFlags = SQLITE_PRINTF_INTERNAL;
  FUNC4(&acc, zFormat, ap);
  z = FUNC2(&acc);
  if( acc.accError==SQLITE_NOMEM ){
    FUNC1(db);
  }
  return z;
}