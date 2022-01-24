#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_10__ {int writableSchema; int rc; int /*<<< orphan*/  pArg; int /*<<< orphan*/  (* xCallback ) (char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  nErr; int /*<<< orphan*/  db; } ;
struct TYPE_9__ {char* z; } ;
typedef  TYPE_1__ DText ;
typedef  TYPE_2__ DState ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,double*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 double FUNC10 (int /*<<< orphan*/ *,int) ; 
 double FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char*,char const*) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 scalar_t__ FUNC19 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ) ; 
 char** FUNC36 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC37(void *pArg, int nArg, char **azArg, char **azCol){
  int rc;
  const char *zTable;
  const char *zType;
  const char *zSql;
  DState *p = (DState*)pArg;
  sqlite3_stmt *pStmt;

  (void)azCol;
  if( nArg!=3 ) return 1;
  zTable = azArg[0];
  zType = azArg[1];
  zSql = azArg[2];

  if( FUNC18(zTable, "sqlite_sequence")==0 ){
    p->xCallback("DELETE FROM sqlite_sequence;\n", p->pArg);
  }else if( FUNC17("sqlite_stat?", zTable)==0 ){
    p->xCallback("ANALYZE sqlite_master;\n", p->pArg);
  }else if( FUNC19(zTable, "sqlite_", 7)==0 ){
    return 0;
  }else if( FUNC19(zSql, "CREATE VIRTUAL TABLE", 20)==0 ){
    if( !p->writableSchema ){
      p->xCallback("PRAGMA writable_schema=ON;\n", p->pArg);
      p->writableSchema = 1;
    }
    FUNC5(p,
       "INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)"
       "VALUES('table','%q','%q',0,'%q');",
       zTable, zTable, zSql);
    return 0;
  }else{
    if( FUNC17("CREATE TABLE ['\"]*", zSql)==0 ){
      p->xCallback("CREATE TABLE IF NOT EXISTS ", p->pArg);
      p->xCallback(zSql+13, p->pArg);
    }else{
      p->xCallback(zSql, p->pArg);
    }
    p->xCallback(";\n", p->pArg);
  }

  if( FUNC18(zType, "table")==0 ){
    DText sSelect;
    DText sTable;
    char **azTCol;
    int i;
    int nCol;

    azTCol = FUNC36(p, zTable);
    if( azTCol==0 ) return 0;

    FUNC3(&sTable);
    FUNC0(&sTable, "INSERT INTO ", 0);

    /* Always quote the table name, even if it appears to be pure ascii,
    ** in case it is a keyword. Ex:  INSERT INTO "table" ... */
    FUNC0(&sTable, zTable, FUNC7(zTable));

    /* If preserving the rowid, add a column list after the table name.
    ** In other words:  "INSERT INTO tab(rowid,a,b,c,...) VALUES(...)"
    ** instead of the usual "INSERT INTO tab VALUES(...)".
    */
    if( azTCol[0] ){
      FUNC0(&sTable, "(", 0);
      FUNC0(&sTable, azTCol[0], 0);
      for(i=1; azTCol[i]; i++){
        FUNC0(&sTable, ",", 0);
        FUNC0(&sTable, azTCol[i], FUNC7(azTCol[i]));
      }
      FUNC0(&sTable, ")", 0);
    }
    FUNC0(&sTable, " VALUES(", 0);

    /* Build an appropriate SELECT statement */
    FUNC3(&sSelect);
    FUNC0(&sSelect, "SELECT ", 0);
    if( azTCol[0] ){
      FUNC0(&sSelect, azTCol[0], 0);
      FUNC0(&sSelect, ",", 0);
    }
    for(i=1; azTCol[i]; i++){
      FUNC0(&sSelect, azTCol[i], FUNC7(azTCol[i]));
      if( azTCol[i+1] ){
        FUNC0(&sSelect, ",", 0);
      }
    }
    nCol = i;
    if( azTCol[0]==0 ) nCol--;
    FUNC1(azTCol);
    FUNC0(&sSelect, " FROM ", 0);
    FUNC0(&sSelect, zTable, FUNC7(zTable));

    rc = FUNC15(p->db, sSelect.z, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      p->nErr++;
      if( p->rc==SQLITE_OK ) p->rc = rc;
    }else{
      while( SQLITE_ROW==FUNC16(pStmt) ){
        p->xCallback(sTable.z, p->pArg);
        for(i=0; i<nCol; i++){
          if( i ) p->xCallback(",", p->pArg);
          switch( FUNC13(pStmt,i) ){
            case SQLITE_INTEGER: {
              FUNC5(p, "%lld", FUNC11(pStmt,i));
              break;
            }
            case SQLITE_FLOAT: {
              double r = FUNC10(pStmt,i);
              sqlite3_uint64 ur;
              FUNC4(&ur,&r,sizeof(r));
              if( ur==0x7ff0000000000000LL ){
                p->xCallback("1e999", p->pArg);
              }else if( ur==0xfff0000000000000LL ){
                p->xCallback("-1e999", p->pArg);
              }else{
                FUNC5(p, "%!.20g", r);
              }
              break;
            }
            case SQLITE_NULL: {
              p->xCallback("NULL", p->pArg);
              break;
            }
            case SQLITE_TEXT: {
              FUNC6(p, 
                   (const char*)FUNC12(pStmt,i));
              break;
            }
            case SQLITE_BLOB: {
              int nByte = FUNC9(pStmt,i);
              unsigned char *a = (unsigned char*)FUNC8(pStmt,i);
              int j;
              p->xCallback("x'", p->pArg);
              for(j=0; j<nByte; j++){
                char zWord[3];
                zWord[0] = "0123456789abcdef"[(a[j]>>4)&15];
                zWord[1] = "0123456789abcdef"[a[j]&15];
                zWord[2] = 0;
                p->xCallback(zWord, p->pArg);
              }
              p->xCallback("'", p->pArg);
              break;
            }
          }
        }
        p->xCallback(");\n", p->pArg);
      }
    }
    FUNC14(pStmt);
    FUNC2(&sTable);
    FUNC2(&sSelect);
  }
  return 0;
}