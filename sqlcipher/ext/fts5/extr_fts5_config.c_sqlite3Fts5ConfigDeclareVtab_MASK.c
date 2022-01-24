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
struct TYPE_3__ {int nCol; char const* zName; int /*<<< orphan*/  db; int /*<<< orphan*/ * azCol; } ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_RANK_NAME ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(Fts5Config *pConfig){
  int i;
  int rc = SQLITE_OK;
  char *zSql;

  zSql = FUNC1(&rc, "CREATE TABLE x(");
  for(i=0; zSql && i<pConfig->nCol; i++){
    const char *zSep = (i==0?"":", ");
    zSql = FUNC1(&rc, "%z%s%Q", zSql, zSep, pConfig->azCol[i]);
  }
  zSql = FUNC1(&rc, "%z, %Q HIDDEN, %s HIDDEN)", 
      zSql, pConfig->zName, FTS5_RANK_NAME
  );

  FUNC0( zSql || rc==SQLITE_NOMEM );
  if( zSql ){
    rc = FUNC2(pConfig->db, zSql);
    FUNC3(zSql);
  }
  
  return rc;
}