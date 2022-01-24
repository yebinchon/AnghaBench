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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  azExt ;
struct TYPE_2__ {char* zArgv0; int bSchemaPK; int bSchemaOnly; int bHandleVtab; int /*<<< orphan*/  db; int /*<<< orphan*/  fDebug; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_CONFIG_SINGLETHREAD ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 char** FUNC10 (char**,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char**) ; 
 char* FUNC19 (char*,char const*) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC24 (char const*,int /*<<< orphan*/ *) ; 

int FUNC25(int argc, char **argv){
  const char *zDb1 = 0;
  const char *zDb2 = 0;
  int i;
  int rc;
  char *zErrMsg = 0;
  char *zSql;
  sqlite3_stmt *pStmt;
  char *zTab = 0;
  FILE *out = stdout;
  void (*xDiff)(const char*,FILE*) = diff_one_table;
#ifndef SQLITE_OMIT_LOAD_EXTENSION
  int nExt = 0;
  char **azExt = 0;
#endif
  int useTransaction = 0;
  int neverUseTransaction = 0;

  g.zArgv0 = argv[0];
  FUNC14(SQLITE_CONFIG_SINGLETHREAD);
  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      z++;
      if( z[0]=='-' ) z++;
      if( FUNC22(z,"changeset")==0 ){
        if( i==argc-1 ) FUNC2("missing argument to %s", argv[i]);
        out = FUNC5(argv[++i], "wb");
        if( out==0 ) FUNC2("cannot open: %s", argv[i]);
        xDiff = changeset_one_table;
        neverUseTransaction = 1;
      }else
      if( FUNC22(z,"debug")==0 ){
        if( i==argc-1 ) FUNC2("missing argument to %s", argv[i]);
        g.fDebug = FUNC23(argv[++i], 0, 0);
      }else
      if( FUNC22(z,"help")==0 ){
        FUNC11();
        return 0;
      }else
#ifndef SQLITE_OMIT_LOAD_EXTENSION
      if( FUNC22(z,"lib")==0 || FUNC22(z,"L")==0 ){
        if( i==argc-1 ) FUNC2("missing argument to %s", argv[i]);
        azExt = FUNC10(azExt, sizeof(azExt[0])*(nExt+1));
        if( azExt==0 ) FUNC2("out of memory");
        azExt[nExt++] = argv[++i];
      }else
#endif
      if( FUNC22(z,"primarykey")==0 ){
        g.bSchemaPK = 1;
      }else
      if( FUNC22(z,"rbu")==0 ){
        xDiff = rbudiff_one_table;
      }else
      if( FUNC22(z,"schema")==0 ){
        g.bSchemaOnly = 1;
      }else
      if( FUNC22(z,"summary")==0 ){
        xDiff = summarize_one_table;
      }else
      if( FUNC22(z,"table")==0 ){
        if( i==argc-1 ) FUNC2("missing argument to %s", argv[i]);
        zTab = argv[++i];
      }else
      if( FUNC22(z,"transaction")==0 ){
        useTransaction = 1;
      }else
      if( FUNC22(z,"vtab")==0 ){
        g.bHandleVtab = 1;
      }else
      {
        FUNC2("unknown option: %s", argv[i]);
      }
    }else if( zDb1==0 ){
      zDb1 = argv[i];
    }else if( zDb2==0 ){
      zDb2 = argv[i];
    }else{
      FUNC2("unknown argument: %s", argv[i]);
    }
  }
  if( zDb2==0 ){
    FUNC2("two database arguments required");
  }
  rc = FUNC20(zDb1, &g.db);
  if( rc ){
    FUNC2("cannot open database file \"%s\"", zDb1);
  }
  rc = FUNC16(g.db, "SELECT * FROM sqlite_master", 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    FUNC2("\"%s\" does not appear to be a valid SQLite database", zDb1);
  }
#ifndef SQLITE_OMIT_LOAD_EXTENSION
  FUNC15(g.db, 1);
  for(i=0; i<nExt; i++){
    rc = FUNC18(g.db, azExt[i], 0, &zErrMsg);
    if( rc || zErrMsg ){
      FUNC2("error loading %s: %s", azExt[i], zErrMsg);
    }
  }
  FUNC7(azExt);
#endif
  zSql = FUNC19("ATTACH %Q as aux;", zDb2);
  rc = FUNC16(g.db, zSql, 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    FUNC2("cannot attach database \"%s\"", zDb2);
  }
  rc = FUNC16(g.db, "SELECT * FROM aux.sqlite_master", 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    FUNC2("\"%s\" does not appear to be a valid SQLite database", zDb2);
  }

  if( neverUseTransaction ) useTransaction = 0;
  if( useTransaction ) FUNC6(out, "BEGIN TRANSACTION;\n");
  if( xDiff==rbudiff_one_table ){
    FUNC6(out, "CREATE TABLE IF NOT EXISTS rbu_count"
           "(tbl TEXT PRIMARY KEY COLLATE NOCASE, cnt INTEGER) "
           "WITHOUT ROWID;\n"
    );
  }
  if( zTab ){
    xDiff(zTab, out);
  }else{
    /* Handle tables one by one */
    pStmt = FUNC3("%s", FUNC0() );
    while( SQLITE_ROW==FUNC21(pStmt) ){
      xDiff((const char*)FUNC13(pStmt,0), out);
    }
    FUNC17(pStmt);
  }
  if( useTransaction ) FUNC8("COMMIT;\n");

  /* TBD: Handle trigger differences */
  /* TBD: Handle view differences */
  FUNC12(g.db);
  return 0;
}