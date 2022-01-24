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
struct TYPE_2__ {int iInst; } ;
typedef  TYPE_1__ vtablog_vtab ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_vtab *tab,
  int argc,
  sqlite3_value **argv,
  sqlite_int64 *pRowid
){
  vtablog_vtab *pTab = (vtablog_vtab*)tab;
  int i;
  FUNC0("vtablogUpdate(tab=%d):\n", pTab->iInst);
  FUNC0("  argc=%d\n", argc);
  for(i=0; i<argc; i++){
    FUNC0("  argv[%d]=", i);
    FUNC1(argv[i]);
    FUNC0("\n");
  }
  return SQLITE_OK;
}