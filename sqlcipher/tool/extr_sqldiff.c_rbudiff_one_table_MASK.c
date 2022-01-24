#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {int bSchemaPK; } ;
struct TYPE_7__ {char* z; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 scalar_t__ SQLITE_INTEGER ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char** FUNC1 (char*,char const*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_6__ g ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*,char*,char**,int) ; 

__attribute__((used)) static void FUNC21(const char *zTab, FILE *out){
  int bOtaRowid;                  /* True to use an ota_rowid column */
  int nPK;                        /* Number of primary key columns in table */
  char **azCol;                   /* NULL terminated array of col names */
  int i;
  int nCol;
  Str ct = {0, 0, 0};             /* The "CREATE TABLE data_xxx" statement */
  Str sql = {0, 0, 0};            /* Query to find differences */
  Str insert = {0, 0, 0};         /* First part of output INSERT statement */
  sqlite3_stmt *pStmt = 0;
  int nRow = 0;                   /* Total rows in data_xxx table */

  /* --rbu mode must use real primary keys. */
  g.bSchemaPK = 1;

  /* Check that the schemas of the two tables match. Exit early otherwise. */
  FUNC0(zTab);

  /* Grab the column names and PK details for the table(s). If no usable PK
  ** columns are found, bail out early.  */
  azCol = FUNC1("main", zTab, &nPK, &bOtaRowid);
  if( azCol==0 ){
    FUNC8("table %s has no usable PK columns", zTab);
  }
  for(nCol=0; azCol[nCol]; nCol++);

  /* Build and output the CREATE TABLE statement for the data_xxx table */
  FUNC19(&ct, "CREATE TABLE IF NOT EXISTS 'data_%q'(", zTab);
  if( bOtaRowid ) FUNC19(&ct, "rbu_rowid, ");
  FUNC20(&ct, ", ", "%s", &azCol[bOtaRowid], -1);
  FUNC19(&ct, ", rbu_control);");

  /* Get the SQL for the query to retrieve data from the two databases */
  FUNC4(zTab, azCol, nPK, bOtaRowid, &sql);

  /* Build the first part of the INSERT statement output for each row
  ** in the data_xxx table. */
  FUNC19(&insert, "INSERT INTO 'data_%q' (", zTab);
  if( bOtaRowid ) FUNC19(&insert, "rbu_rowid, ");
  FUNC20(&insert, ", ", "%s", &azCol[bOtaRowid], -1);
  FUNC19(&insert, ", rbu_control) VALUES(");

  pStmt = FUNC2("%s", sql.z);

  while( FUNC17(pStmt)==SQLITE_ROW ){
    
    /* If this is the first row output, print out the CREATE TABLE 
    ** statement first. And then set ct.z to NULL so that it is not 
    ** printed again.  */
    if( ct.z ){
      FUNC3(out, "%s\n", ct.z);
      FUNC18(&ct);
    }

    /* Output the first part of the INSERT statement */
    FUNC3(out, "%s", insert.z);
    nRow++;

    if( FUNC12(pStmt, nCol)==SQLITE_INTEGER ){
      for(i=0; i<=nCol; i++){
        if( i>0 ) FUNC3(out, ", ");
        FUNC6(out, FUNC13(pStmt, i));
      }
    }else{
      char *zOtaControl;
      int nOtaControl = FUNC10(pStmt, nCol);

      zOtaControl = (char*)FUNC16(nOtaControl+1);
      FUNC5(zOtaControl, FUNC11(pStmt, nCol), nOtaControl+1);

      for(i=0; i<nCol; i++){
        int bDone = 0;
        if( i>=nPK 
            && FUNC12(pStmt, i)==SQLITE_BLOB
            && FUNC12(pStmt, nCol+1+i)==SQLITE_BLOB
        ){
          const char *aSrc = FUNC9(pStmt, nCol+1+i);
          int nSrc = FUNC10(pStmt, nCol+1+i);
          const char *aFinal = FUNC9(pStmt, i);
          int nFinal = FUNC10(pStmt, i);
          char *aDelta;
          int nDelta;

          aDelta = FUNC16(nFinal + 60);
          nDelta = FUNC7(aSrc, nSrc, aFinal, nFinal, aDelta);
          if( nDelta<nFinal ){
            int j;
            FUNC3(out, "x'");
            for(j=0; j<nDelta; j++) FUNC3(out, "%02x", (u8)aDelta[j]);
            FUNC3(out, "'");
            zOtaControl[i-bOtaRowid] = 'f';
            bDone = 1;
          }
          FUNC15(aDelta);
        }

        if( bDone==0 ){
          FUNC6(out, FUNC13(pStmt, i));
        }
        FUNC3(out, ", ");
      }
      FUNC3(out, "'%s'", zOtaControl);
      FUNC15(zOtaControl);
    }

    /* And the closing bracket of the insert statement */
    FUNC3(out, ");\n");
  }

  FUNC14(pStmt);
  if( nRow>0 ){
    Str cnt = {0, 0, 0};
    FUNC19(&cnt, "INSERT INTO rbu_count VALUES('data_%q', %d);", zTab, nRow);
    FUNC3(out, "%s\n", cnt.z);
    FUNC18(&cnt);
  }

  FUNC18(&ct);
  FUNC18(&sql);
  FUNC18(&insert);
}