#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_OK ; 
 int SQLITE_PREPARE_NO_VTAB ; 
 int SQLITE_PREPARE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
  Fts5Index *p,
  sqlite3_stmt **ppStmt,
  char *zSql
){
  if( p->rc==SQLITE_OK ){
    if( zSql ){
      p->rc = FUNC1(p->pConfig->db, zSql, -1,
          SQLITE_PREPARE_PERSISTENT|SQLITE_PREPARE_NO_VTAB,
          ppStmt, 0);
    }else{
      p->rc = SQLITE_NOMEM;
    }
  }
  FUNC0(zSql);
  return p->rc;
}