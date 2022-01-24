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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ BinfoTable ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  BinfoTable *pTab = 0;
  int rc = SQLITE_OK;
  rc = FUNC1(db, 
      "CREATE TABLE x(\n"
      " type TEXT,\n"
      " name TEXT,\n"
      " tbl_name TEXT,\n"
      " rootpage INT,\n"
      " sql TEXT,\n"
      " hasRowid BOOLEAN,\n"
      " nEntry INT,\n"
      " nPage INT,\n"
      " depth INT,\n"
      " szPage INT,\n"
      " zSchema TEXT HIDDEN\n"
      ")");
  if( rc==SQLITE_OK ){
    pTab = (BinfoTable *)FUNC2(sizeof(BinfoTable));
    if( pTab==0 ) rc = SQLITE_NOMEM;
  }
  FUNC0( rc==SQLITE_OK || pTab==0 );
  if( pTab ){
    pTab->db = db;
  }
  *ppVtab = (sqlite3_vtab*)pTab;
  return rc;
}