#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {scalar_t__ zContentTbl; char* zLanguageid; int nColumn; char** azColumn; scalar_t__ bHasStat; scalar_t__ bFts4; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; scalar_t__ bHasDocsize; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(Fts3Table *p){
  int rc = SQLITE_OK;             /* Return code */
  int i;                          /* Iterator variable */
  sqlite3 *db = p->db;            /* The database connection */

  if( p->zContentTbl==0 ){
    const char *zLanguageid = p->zLanguageid;
    char *zContentCols;           /* Columns of %_content table */

    /* Create a list of user columns for the content table */
    zContentCols = FUNC4("docid INTEGER PRIMARY KEY");
    for(i=0; zContentCols && i<p->nColumn; i++){
      char *z = p->azColumn[i];
      zContentCols = FUNC4("%z, 'c%d%q'", zContentCols, i, z);
    }
    if( zLanguageid && zContentCols ){
      zContentCols = FUNC4("%z, langid", zContentCols, zLanguageid);
    }
    if( zContentCols==0 ) rc = SQLITE_NOMEM;
  
    /* Create the content table */
    FUNC1(&rc, db, 
       "CREATE TABLE %Q.'%q_content'(%s)",
       p->zDb, p->zName, zContentCols
    );
    FUNC3(zContentCols);
  }

  /* Create other tables */
  FUNC1(&rc, db, 
      "CREATE TABLE %Q.'%q_segments'(blockid INTEGER PRIMARY KEY, block BLOB);",
      p->zDb, p->zName
  );
  FUNC1(&rc, db, 
      "CREATE TABLE %Q.'%q_segdir'("
        "level INTEGER,"
        "idx INTEGER,"
        "start_block INTEGER,"
        "leaves_end_block INTEGER,"
        "end_block INTEGER,"
        "root BLOB,"
        "PRIMARY KEY(level, idx)"
      ");",
      p->zDb, p->zName
  );
  if( p->bHasDocsize ){
    FUNC1(&rc, db, 
        "CREATE TABLE %Q.'%q_docsize'(docid INTEGER PRIMARY KEY, size BLOB);",
        p->zDb, p->zName
    );
  }
  FUNC0( p->bHasStat==p->bFts4 );
  if( p->bHasStat ){
    FUNC2(&rc, p);
  }
  return rc;
}