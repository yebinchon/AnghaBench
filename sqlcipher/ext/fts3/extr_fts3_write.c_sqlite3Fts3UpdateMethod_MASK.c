#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  aSzDel ;
struct TYPE_11__ {int bHasStat; scalar_t__ pSegments; int nColumn; scalar_t__ zContentTbl; scalar_t__ bFts4; scalar_t__ bHasDocsize; int /*<<< orphan*/  iPrevDocid; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int SQLITE_CONSTRAINT ; 
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(
  sqlite3_vtab *pVtab,            /* FTS3 vtab object */
  int nArg,                       /* Size of argument array */
  sqlite3_value **apVal,          /* Array of arguments */
  sqlite_int64 *pRowid            /* OUT: The affected (or effected) rowid */
){
  Fts3Table *p = (Fts3Table *)pVtab;
  int rc = SQLITE_OK;             /* Return Code */
  u32 *aSzIns = 0;                /* Sizes of inserted documents */
  u32 *aSzDel = 0;                /* Sizes of deleted documents */
  int nChng = 0;                  /* Net change in number of documents */
  int bInsertDone = 0;

  /* At this point it must be known if the %_stat table exists or not.
  ** So bHasStat may not be 2.  */
  FUNC0( p->bHasStat==0 || p->bHasStat==1 );

  FUNC0( p->pSegments==0 );
  FUNC0( 
      nArg==1                     /* DELETE operations */
   || nArg==(2 + p->nColumn + 3)  /* INSERT or UPDATE operations */
  );

  /* Check for a "special" INSERT operation. One of the form:
  **
  **   INSERT INTO xyz(xyz) VALUES('command');
  */
  if( nArg>1 
   && FUNC15(apVal[0])==SQLITE_NULL 
   && FUNC15(apVal[p->nColumn+2])!=SQLITE_NULL 
  ){
    rc = FUNC6(p, apVal[p->nColumn+2]);
    goto update_out;
  }

  if( nArg>1 && FUNC13(apVal[2 + p->nColumn + 2])<0 ){
    rc = SQLITE_CONSTRAINT;
    goto update_out;
  }

  /* Allocate space to hold the change in document sizes */
  aSzDel = FUNC12(sizeof(aSzDel[0])*((sqlite3_int64)p->nColumn+1)*2);
  if( aSzDel==0 ){
    rc = SQLITE_NOMEM;
    goto update_out;
  }
  aSzIns = &aSzDel[p->nColumn+1];
  FUNC9(aSzDel, 0, sizeof(aSzDel[0])*(p->nColumn+1)*2);

  rc = FUNC8(p);
  if( rc!=SQLITE_OK ) goto update_out;

  /* If this is an INSERT operation, or an UPDATE that modifies the rowid
  ** value, then this operation requires constraint handling.
  **
  ** If the on-conflict mode is REPLACE, this means that the existing row
  ** should be deleted from the database before inserting the new row. Or,
  ** if the on-conflict mode is other than REPLACE, then this method must
  ** detect the conflict and return SQLITE_CONSTRAINT before beginning to
  ** modify the database file.
  */
  if( nArg>1 && p->zContentTbl==0 ){
    /* Find the value object that holds the new rowid value. */
    sqlite3_value *pNewRowid = apVal[3+p->nColumn];
    if( FUNC15(pNewRowid)==SQLITE_NULL ){
      pNewRowid = apVal[1];
    }

    if( FUNC15(pNewRowid)!=SQLITE_NULL && ( 
        FUNC15(apVal[0])==SQLITE_NULL
     || FUNC14(apVal[0])!=FUNC14(pNewRowid)
    )){
      /* The new rowid is not NULL (in this case the rowid will be
      ** automatically assigned and there is no chance of a conflict), and 
      ** the statement is either an INSERT or an UPDATE that modifies the
      ** rowid column. So if the conflict mode is REPLACE, then delete any
      ** existing row with rowid=pNewRowid. 
      **
      ** Or, if the conflict mode is not REPLACE, insert the new record into 
      ** the %_content table. If we hit the duplicate rowid constraint (or any
      ** other error) while doing so, return immediately.
      **
      ** This branch may also run if pNewRowid contains a value that cannot
      ** be losslessly converted to an integer. In this case, the eventual 
      ** call to fts3InsertData() (either just below or further on in this
      ** function) will return SQLITE_MISMATCH. If fts3DeleteByRowid is 
      ** invoked, it will delete zero rows (since no row will have
      ** docid=$pNewRowid if $pNewRowid is not an integer value).
      */
      if( FUNC16(p->db)==SQLITE_REPLACE ){
        rc = FUNC1(p, pNewRowid, &nChng, aSzDel);
      }else{
        rc = FUNC2(p, apVal, pRowid);
        bInsertDone = 1;
      }
    }
  }
  if( rc!=SQLITE_OK ){
    goto update_out;
  }

  /* If this is a DELETE or UPDATE operation, remove the old record. */
  if( FUNC15(apVal[0])!=SQLITE_NULL ){
    FUNC0( FUNC15(apVal[0])==SQLITE_INTEGER );
    rc = FUNC1(p, apVal[0], &nChng, aSzDel);
  }
  
  /* If this is an INSERT or UPDATE operation, insert the new record. */
  if( nArg>1 && rc==SQLITE_OK ){
    int iLangid = FUNC13(apVal[2 + p->nColumn + 2]);
    if( bInsertDone==0 ){
      rc = FUNC2(p, apVal, pRowid);
      if( rc==SQLITE_CONSTRAINT && p->zContentTbl==0 ){
        rc = FTS_CORRUPT_VTAB;
      }
    }
    if( rc==SQLITE_OK ){
      rc = FUNC5(p, 0, iLangid, *pRowid);
    }
    if( rc==SQLITE_OK ){
      FUNC0( p->iPrevDocid==*pRowid );
      rc = FUNC4(p, iLangid, apVal, aSzIns);
    }
    if( p->bHasDocsize ){
      FUNC3(&rc, p, aSzIns);
    }
    nChng++;
  }

  if( p->bFts4 ){
    FUNC7(&rc, p, aSzIns, aSzDel, nChng);
  }

 update_out:
  FUNC11(aSzDel);
  FUNC10(p);
  return rc;
}