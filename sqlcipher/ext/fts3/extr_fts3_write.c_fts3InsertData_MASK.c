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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_4__ {int nColumn; int /*<<< orphan*/  db; scalar_t__ zLanguageid; scalar_t__ zContentTbl; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_CONSTRAINT ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_INTEGER ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_CONTENT_INSERT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  Fts3Table *p,                   /* Full-text table */
  sqlite3_value **apVal,          /* Array of values to insert */
  sqlite3_int64 *piDocid          /* OUT: Docid for row just inserted */
){
  int rc;                         /* Return code */
  sqlite3_stmt *pContentInsert;   /* INSERT INTO %_content VALUES(...) */

  if( p->zContentTbl ){
    sqlite3_value *pRowid = apVal[p->nColumn+3];
    if( FUNC8(pRowid)==SQLITE_NULL ){
      pRowid = apVal[1];
    }
    if( FUNC8(pRowid)!=SQLITE_INTEGER ){
      return SQLITE_CONSTRAINT;
    }
    *piDocid = FUNC7(pRowid);
    return SQLITE_OK;
  }

  /* Locate the statement handle used to insert data into the %_content
  ** table. The SQL for this statement is:
  **
  **   INSERT INTO %_content VALUES(?, ?, ?, ...)
  **
  ** The statement features N '?' variables, where N is the number of user
  ** defined columns in the FTS3 table, plus one for the docid field.
  */
  rc = FUNC0(p, SQL_CONTENT_INSERT, &pContentInsert, &apVal[1]);
  if( rc==SQLITE_OK && p->zLanguageid ){
    rc = FUNC1(
        pContentInsert, p->nColumn+2, 
        FUNC6(apVal[p->nColumn+4])
    );
  }
  if( rc!=SQLITE_OK ) return rc;

  /* There is a quirk here. The users INSERT statement may have specified
  ** a value for the "rowid" field, for the "docid" field, or for both.
  ** Which is a problem, since "rowid" and "docid" are aliases for the
  ** same value. For example:
  **
  **   INSERT INTO fts3tbl(rowid, docid) VALUES(1, 2);
  **
  ** In FTS3, this is an error. It is an error to specify non-NULL values
  ** for both docid and some other rowid alias.
  */
  if( SQLITE_NULL!=FUNC8(apVal[3+p->nColumn]) ){
    if( SQLITE_NULL==FUNC8(apVal[0])
     && SQLITE_NULL!=FUNC8(apVal[1])
    ){
      /* A rowid/docid conflict. */
      return SQLITE_ERROR;
    }
    rc = FUNC2(pContentInsert, 1, apVal[3+p->nColumn]);
    if( rc!=SQLITE_OK ) return rc;
  }

  /* Execute the statement to insert the record. Set *piDocid to the 
  ** new docid value. 
  */
  FUNC5(pContentInsert);
  rc = FUNC4(pContentInsert);

  *piDocid = FUNC3(p->db);
  return rc;
}