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
struct TYPE_2__ {char* zTableName; int /*<<< orphan*/  zDbName; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ spellfix1_vtab ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab *pVTab, const char *zNew){
  spellfix1_vtab *p = (spellfix1_vtab*)pVTab;
  sqlite3 *db = p->db;
  int rc = SQLITE_OK;
  char *zNewName = FUNC2("%s", zNew);
  if( zNewName==0 ){
    return SQLITE_NOMEM;
  }
  FUNC0(&rc, db, 
     "ALTER TABLE \"%w\".\"%w_vocab\" RENAME TO \"%w_vocab\"",
     p->zDbName, p->zTableName, zNewName
  );
  if( rc==SQLITE_OK ){
    FUNC1(p->zTableName);
    p->zTableName = zNewName;
  }else{
    FUNC1(zNewName);
  }
  return rc;
}