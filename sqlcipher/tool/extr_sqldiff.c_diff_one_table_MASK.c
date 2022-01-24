#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int fDebug; int /*<<< orphan*/  bSchemaOnly; int /*<<< orphan*/  db; } ;
struct TYPE_6__ {char* z; } ;
typedef  TYPE_1__ Str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEBUG_COLUMN_NAMES ; 
 int DEBUG_DIFF_SQL ; 
 scalar_t__ SQLITE_ROW ; 
 char** FUNC0 (char*,char const*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_5__ g ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static void FUNC19(const char *zTab, FILE *out){
  char *zId = FUNC7(zTab); /* Name of table (translated for us in SQL) */
  char **az = 0;            /* Columns in main */
  char **az2 = 0;           /* Columns in aux */
  int nPk;                  /* Primary key columns in main */
  int nPk2;                 /* Primary key columns in aux */
  int n = 0;                /* Number of columns in main */
  int n2;                   /* Number of columns in aux */
  int nQ;                   /* Number of output columns in the diff query */
  int i;                    /* Loop counter */
  const char *zSep;         /* Separator string */
  Str sql;                  /* Comparison query */
  sqlite3_stmt *pStmt;      /* Query statement to do the diff */

  FUNC17(&sql);
  if( g.fDebug==DEBUG_COLUMN_NAMES ){
    /* Simply run columnNames() on all tables of the origin
    ** database and show the results.  This is used for testing
    ** and debugging of the columnNames() function.
    */
    az = FUNC0("aux",zTab, &nPk, 0);
    if( az==0 ){
      FUNC6("Rowid not accessible for %s\n", zId);
    }else{
      FUNC6("%s:", zId);
      for(i=0; az[i]; i++){
        FUNC6(" %s", az[i]);
        if( i+1==nPk ) FUNC6(" *");
      }
      FUNC6("\n");
    }
    goto end_diff_one_table;
  }
    

  if( FUNC15(g.db,"aux",zTab,0,0,0,0,0,0) ){
    if( !FUNC15(g.db,"main",zTab,0,0,0,0,0,0) ){
      /* Table missing from second database. */
      FUNC3(out, "DROP TABLE %s;\n", zId);
    }
    goto end_diff_one_table;
  }

  if( FUNC15(g.db,"main",zTab,0,0,0,0,0,0) ){
    /* Table missing from source */
    FUNC2(zTab, out);
    goto end_diff_one_table;
  }

  az = FUNC0("main", zTab, &nPk, 0);
  az2 = FUNC0("aux", zTab, &nPk2, 0);
  if( az && az2 ){
    for(n=0; az[n] && az2[n]; n++){
      if( FUNC14(az[n],az2[n])!=0 ) break;
    }
  }
  if( az==0
   || az2==0
   || nPk!=nPk2
   || az[n]
  ){
    /* Schema mismatch */
    FUNC3(out, "DROP TABLE %s; -- due to schema mismatch\n", zId);
    FUNC2(zTab, out);
    goto end_diff_one_table;
  }

  /* Build the comparison query */
  for(n2=n; az2[n2]; n2++){
    FUNC3(out, "ALTER TABLE %s ADD COLUMN %s;\n", zId, FUNC7(az2[n2]));
  }
  nQ = nPk2+1+2*(n2-nPk2);
  if( n2>nPk2 ){
    zSep = "SELECT ";
    for(i=0; i<nPk; i++){
      FUNC18(&sql, "%sB.%s", zSep, az[i]);
      zSep = ", ";
    }
    FUNC18(&sql, ", 1%s -- changed row\n", nPk==n ? "" : ",");
    while( az[i] ){
      FUNC18(&sql, "       A.%s IS NOT B.%s, B.%s%s\n",
                az[i], az2[i], az2[i], az2[i+1]==0 ? "" : ",");
      i++;
    }
    while( az2[i] ){
      FUNC18(&sql, "       B.%s IS NOT NULL, B.%s%s\n",
                az2[i], az2[i], az2[i+1]==0 ? "" : ",");
      i++;
    }
    FUNC18(&sql, "  FROM main.%s A, aux.%s B\n", zId, zId);
    zSep = " WHERE";
    for(i=0; i<nPk; i++){
      FUNC18(&sql, "%s A.%s=B.%s", zSep, az[i], az[i]);
      zSep = " AND";
    }
    zSep = "\n   AND (";
    while( az[i] ){
      FUNC18(&sql, "%sA.%s IS NOT B.%s%s\n",
                zSep, az[i], az2[i], az2[i+1]==0 ? ")" : "");
      zSep = "        OR ";
      i++;
    }
    while( az2[i] ){
      FUNC18(&sql, "%sB.%s IS NOT NULL%s\n",
                zSep, az2[i], az2[i+1]==0 ? ")" : "");
      zSep = "        OR ";
      i++;
    }
    FUNC18(&sql, " UNION ALL\n");
  }
  zSep = "SELECT ";
  for(i=0; i<nPk; i++){
    FUNC18(&sql, "%sA.%s", zSep, az[i]);
    zSep = ", ";
  }
  FUNC18(&sql, ", 2%s -- deleted row\n", nPk==n ? "" : ",");
  while( az2[i] ){
    FUNC18(&sql, "       NULL, NULL%s\n", i==n2-1 ? "" : ",");
    i++;
  }
  FUNC18(&sql, "  FROM main.%s A\n", zId);
  FUNC18(&sql, " WHERE NOT EXISTS(SELECT 1 FROM aux.%s B\n", zId);
  zSep =          "                   WHERE";
  for(i=0; i<nPk; i++){
    FUNC18(&sql, "%s A.%s=B.%s", zSep, az[i], az[i]);
    zSep = " AND";
  }
  FUNC18(&sql, ")\n");
  zSep = " UNION ALL\nSELECT ";
  for(i=0; i<nPk; i++){
    FUNC18(&sql, "%sB.%s", zSep, az[i]);
    zSep = ", ";
  }
  FUNC18(&sql, ", 3%s -- inserted row\n", nPk==n ? "" : ",");
  while( az2[i] ){
    FUNC18(&sql, "       1, B.%s%s\n", az2[i], az2[i+1]==0 ? "" : ",");
    i++;
  }
  FUNC18(&sql, "  FROM aux.%s B\n", zId);
  FUNC18(&sql, " WHERE NOT EXISTS(SELECT 1 FROM main.%s A\n", zId);
  zSep =          "                   WHERE";
  for(i=0; i<nPk; i++){
    FUNC18(&sql, "%s A.%s=B.%s", zSep, az[i], az[i]);
    zSep = " AND";
  }
  FUNC18(&sql, ")\n ORDER BY");
  zSep = " ";
  for(i=1; i<=nPk; i++){
    FUNC18(&sql, "%s%d", zSep, i);
    zSep = ", ";
  }
  FUNC18(&sql, ";\n");

  if( g.fDebug & DEBUG_DIFF_SQL ){ 
    FUNC6("SQL for %s:\n%s\n", zId, sql.z);
    goto end_diff_one_table;
  }

  /* Drop indexes that are missing in the destination */
  pStmt = FUNC1(
    "SELECT name FROM main.sqlite_master"
    " WHERE type='index' AND tbl_name=%Q"
    "   AND sql IS NOT NULL"
    "   AND sql NOT IN (SELECT sql FROM aux.sqlite_master"
    "                    WHERE type='index' AND tbl_name=%Q"
    "                      AND sql IS NOT NULL)",
    zTab, zTab);
  while( SQLITE_ROW==FUNC13(pStmt) ){
    char *z = FUNC7((const char*)FUNC9(pStmt,0));
    FUNC3(out, "DROP INDEX %s;\n", z);
    FUNC12(z);
  }
  FUNC11(pStmt);

  /* Run the query and output differences */
  if( !g.bSchemaOnly ){
    pStmt = FUNC1("%s", sql.z);
    while( SQLITE_ROW==FUNC13(pStmt) ){
      int iType = FUNC8(pStmt, nPk);
      if( iType==1 || iType==2 ){
        if( iType==1 ){       /* Change the content of a row */
          FUNC3(out, "UPDATE %s", zId);
          zSep = " SET";
          for(i=nPk+1; i<nQ; i+=2){
            if( FUNC8(pStmt,i)==0 ) continue;
            FUNC3(out, "%s %s=", zSep, az2[(i+nPk-1)/2]);
            zSep = ",";
            FUNC5(out, FUNC10(pStmt,i+1));
          }
        }else{                /* Delete a row */
          FUNC3(out, "DELETE FROM %s", zId);
        }
        zSep = " WHERE";
        for(i=0; i<nPk; i++){
          FUNC3(out, "%s %s=", zSep, az2[i]);
          FUNC5(out, FUNC10(pStmt,i));
          zSep = " AND";
        }
        FUNC3(out, ";\n");
      }else{                  /* Insert a row */
        FUNC3(out, "INSERT INTO %s(%s", zId, az2[0]);
        for(i=1; az2[i]; i++) FUNC3(out, ",%s", az2[i]);
        FUNC3(out, ") VALUES");
        zSep = "(";
        for(i=0; i<nPk2; i++){
          FUNC3(out, "%s", zSep);
          zSep = ",";
          FUNC5(out, FUNC10(pStmt,i));
        }
        for(i=nPk2+2; i<nQ; i+=2){
          FUNC3(out, ",");
          FUNC5(out, FUNC10(pStmt,i));
        }
        FUNC3(out, ");\n");
      }
    }
    FUNC11(pStmt);
  } /* endif !g.bSchemaOnly */

  /* Create indexes that are missing in the source */
  pStmt = FUNC1(
    "SELECT sql FROM aux.sqlite_master"
    " WHERE type='index' AND tbl_name=%Q"
    "   AND sql IS NOT NULL"
    "   AND sql NOT IN (SELECT sql FROM main.sqlite_master"
    "                    WHERE type='index' AND tbl_name=%Q"
    "                      AND sql IS NOT NULL)",
    zTab, zTab);
  while( SQLITE_ROW==FUNC13(pStmt) ){
    FUNC3(out, "%s;\n", FUNC9(pStmt,0));
  }
  FUNC11(pStmt);

end_diff_one_table:
  FUNC16(&sql);
  FUNC12(zId);
  FUNC4(az);
  FUNC4(az2);
  return;
}