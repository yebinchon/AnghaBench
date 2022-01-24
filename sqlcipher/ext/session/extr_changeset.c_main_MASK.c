#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_changeset_iter ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  SQLITE_DELETE 130 
#define  SQLITE_INSERT 129 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
#define  SQLITE_UPDATE 128 
 int /*<<< orphan*/  conflictCallback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int nConflict ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 char* FUNC13 (char*,char const*) ; 
 int FUNC14 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (char*,char const*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,void*,int,void*,int*,void**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int,void*,int*,void**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const**,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ **,int,void*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC26 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

int FUNC28(int argc, char **argv){
  int sz, rc;
  void *pBuf = 0;
  if( argc<3 ) FUNC27(argv[0]);
  FUNC7(argv[1], &sz, &pBuf);

  /* changeset FILENAME apply DB
  ** Apply the changeset in FILENAME to the database file DB
  */
  if( FUNC26(argv[2],"apply")==0 ){
    sqlite3 *db;
    if( argc!=4 ) FUNC27(argv[0]);
    rc = FUNC14(argv[3], &db);
    if( rc!=SQLITE_OK ){
      FUNC3(stderr, "unable to open database file \"%s\": %s\n",
              argv[3], FUNC10(db));
      FUNC9(db);
      FUNC0(1);
    }
    FUNC11(db, "BEGIN", 0, 0, 0);
    nConflict = 0;
    rc = FUNC16(db, sz, pBuf, 0, conflictCallback, 0);
    if( rc ){
      FUNC3(stderr, "sqlite3changeset_apply() returned %d\n", rc);
    }
    if( nConflict ){
      FUNC3(stderr, "%d conflicts - no changes applied\n", nConflict);
      FUNC11(db, "ROLLBACK", 0, 0, 0);
    }else if( rc ){
      FUNC3(stderr, "sqlite3changeset_apply() returns %d "
                      "- no changes applied\n", rc);
      FUNC11(db, "ROLLBACK", 0, 0, 0);
    }else{
      FUNC11(db, "COMMIT", 0, 0, 0);
    }
    FUNC9(db);
  }else

  /* changeset FILENAME concat FILE2 OUT
  ** Add changeset FILE2 onto the end of the changeset in FILENAME
  ** and write the result into OUT.
  */
  if( FUNC26(argv[2],"concat")==0 ){
    int szB;
    void *pB;
    int szOut;
    void *pOutBuf;
    FILE *out;
    const char *zOut = argv[4];
    if( argc!=5 ) FUNC27(argv[0]);
    out = FUNC2(zOut, "wb");
    if( out==0 ){
      FUNC3(stderr, "cannot open \"%s\" for writing\n", zOut);
      FUNC0(1);
    }
    FUNC7(argv[3], &szB, &pB);
    rc = FUNC17(sz, pBuf, szB, pB, &szOut, &pOutBuf);
    if( rc!=SQLITE_OK ){
      FUNC3(stderr, "sqlite3changeset_concat() returns %d\n", rc);
    }else if( szOut>0 && FUNC4(pOutBuf, szOut, 1, out)!=1 ){
      FUNC3(stderr, "unable to write all %d bytes of output to \"%s\"\n",
              szOut, zOut);
    }
    FUNC1(out);
    FUNC12(pOutBuf);
    FUNC12(pB);
  }else

  /* changeset FILENAME dump
  ** Show the complete content of the changeset in FILENAME
  */
  if( FUNC26(argv[2],"dump")==0 ){
    int cnt = 0;
    int i;
    sqlite3_changeset_iter *pIter;
    rc = FUNC25(&pIter, sz, pBuf);
    if( rc!=SQLITE_OK ){
      FUNC3(stderr, "sqlite3changeset_start() returns %d\n", rc);
      FUNC0(1);
    }
    while( FUNC21(pIter)==SQLITE_ROW ){
      int op, bIndirect, nCol;
      const char *zTab;
      unsigned char *abPK;
      FUNC23(pIter, &zTab, &nCol, &op, &bIndirect);
      cnt++;
      FUNC6("%d: %s table=[%s] indirect=%d nColumn=%d\n",
             cnt, op==SQLITE_INSERT ? "INSERT" :
                       op==SQLITE_UPDATE ? "UPDATE" : "DELETE",
             zTab, bIndirect, nCol);
      FUNC24(pIter, &abPK, 0);
      for(i=0; i<nCol; i++){
        sqlite3_value *pVal;
        pVal = 0;
        FUNC22(pIter, i, &pVal);
        if( pVal ){
          FUNC6("    old[%d]%s = ", i, abPK[i] ? "pk" : "  ");
          FUNC8(pVal);
          FUNC6("\n");
        }
        pVal = 0;
        FUNC20(pIter, i, &pVal);
        if( pVal ){
          FUNC6("    new[%d]%s = ", i, abPK[i] ? "pk" : "  ");
          FUNC8(pVal);
          FUNC6("\n");
        }
      }
    }
    FUNC18(pIter);
  }else

  /* changeset FILENAME invert OUT
  ** Invert the changes in FILENAME and writes the result on OUT
  */
  if( FUNC26(argv[2],"invert")==0 ){
    FILE *out;
    int szOut = 0;
    void *pOutBuf = 0;
    const char *zOut = argv[3];
    if( argc!=4 ) FUNC27(argv[0]);
    out = FUNC2(zOut, "wb");
    if( out==0 ){
      FUNC3(stderr, "cannot open \"%s\" for writing\n", zOut);
      FUNC0(1);
    }
    rc = FUNC19(sz, pBuf, &szOut, &pOutBuf);
    if( rc!=SQLITE_OK ){
      FUNC3(stderr, "sqlite3changeset_invert() returns %d\n", rc);
    }else if( szOut>0 && FUNC4(pOutBuf, szOut, 1, out)!=1 ){
      FUNC3(stderr, "unable to write all %d bytes of output to \"%s\"\n",
              szOut, zOut);
    }
    FUNC1(out);
    FUNC12(pOutBuf);
  }else

  /* changeset FILE sql
  ** Show the content of the changeset as pseudo-SQL
  */
  if( FUNC26(argv[2],"sql")==0 ){
    int cnt = 0;
    char *zPrevTab = 0;
    char *zSQLTabName = 0;
    sqlite3_changeset_iter *pIter = 0;
    rc = FUNC25(&pIter, sz, pBuf);
    if( rc!=SQLITE_OK ){
      FUNC3(stderr, "sqlite3changeset_start() returns %d\n", rc);
      FUNC0(1);
    }
    FUNC6("BEGIN;\n");
    while( FUNC21(pIter)==SQLITE_ROW ){
      int op, bIndirect, nCol;
      const char *zTab;
      FUNC23(pIter, &zTab, &nCol, &op, &bIndirect);
      cnt++;
      if( zPrevTab==0 || FUNC26(zPrevTab,zTab)!=0 ){
        FUNC12(zPrevTab);
        FUNC12(zSQLTabName);
        zPrevTab = FUNC13("%s", zTab);
        if( !FUNC5(zTab[0]) || FUNC15("*[^a-zA-Z0-9]*",zTab)==0 ){
          zSQLTabName = FUNC13("\"%w\"", zTab);
        }else{
          zSQLTabName = FUNC13("%s", zTab);
        }
        FUNC6("/****** Changes for table %s ***************/\n", zSQLTabName);
      }
      switch( op ){
        case SQLITE_DELETE: {
          unsigned char *abPK;
          int i;
          const char *zSep = " ";
          FUNC24(pIter, &abPK, 0);
          FUNC6("/* %d */ DELETE FROM %s WHERE", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            if( abPK[i]==0 ) continue;
            FUNC6("%sc%d=", zSep, i+1);
            zSep = " AND ";
            FUNC22(pIter, i, &pVal);
            FUNC8(pVal);
          }
          FUNC6(";\n");
          break;
        }
        case SQLITE_UPDATE: {
          unsigned char *abPK;
          int i;
          const char *zSep = " ";
          FUNC24(pIter, &abPK, 0);
          FUNC6("/* %d */ UPDATE %s SET", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal = 0;
            FUNC20(pIter, i, &pVal);
            if( pVal ){
              FUNC6("%sc%d=", zSep, i+1);
              zSep = ", ";
              FUNC8(pVal);
            }
          }
          FUNC6(" WHERE");
          zSep = " ";
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            if( abPK[i]==0 ) continue;
            FUNC6("%sc%d=", zSep, i+1);
            zSep = " AND ";
            FUNC22(pIter, i, &pVal);
            FUNC8(pVal);
          }
          FUNC6(";\n");
          break;
        }
        case SQLITE_INSERT: {
          int i;
          FUNC6("/* %d */ INSERT INTO %s VALUES", cnt, zSQLTabName);
          for(i=0; i<nCol; i++){
            sqlite3_value *pVal;
            FUNC6("%c", i==0 ? '(' : ',');
            FUNC20(pIter, i, &pVal);
            FUNC8(pVal);
          }
          FUNC6(");\n");
          break;
        }
      }
    }
    FUNC6("COMMIT;\n");
    FUNC18(pIter);
    FUNC12(zPrevTab);
    FUNC12(zSQLTabName);
  }else

  /* If nothing else matches, show the usage comment */
  FUNC27(argv[0]);
  FUNC12(pBuf);
  return 0; 
}