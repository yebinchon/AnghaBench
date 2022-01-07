
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int azExt ;
struct TYPE_2__ {char* zArgv0; int bSchemaPK; int bSchemaOnly; int bHandleVtab; int db; int fDebug; } ;
typedef int FILE ;


 int SQLITE_CONFIG_SINGLETHREAD ;
 scalar_t__ SQLITE_ROW ;
 int all_tables_sql () ;
 void changeset_one_table (char const*,int *) ;
 int cmdlineError (char*,...) ;
 int * db_prepare (char*,int ) ;
 void diff_one_table (char const*,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*) ;
 int free (char**) ;
 TYPE_1__ g ;
 int printf (char*) ;
 void rbudiff_one_table (char const*,int *) ;
 char** realloc (char**,int) ;
 int showHelp () ;
 int sqlite3_close (int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_config (int ) ;
 int sqlite3_enable_load_extension (int ,int) ;
 int sqlite3_exec (int ,char*,int ,int ,char**) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_load_extension (int ,char*,int ,char**) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_open (char const*,int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 int strtol (char*,int ,int ) ;
 void summarize_one_table (char const*,int *) ;

int main(int argc, char **argv){
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

  int nExt = 0;
  char **azExt = 0;

  int useTransaction = 0;
  int neverUseTransaction = 0;

  g.zArgv0 = argv[0];
  sqlite3_config(SQLITE_CONFIG_SINGLETHREAD);
  for(i=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      z++;
      if( z[0]=='-' ) z++;
      if( strcmp(z,"changeset")==0 ){
        if( i==argc-1 ) cmdlineError("missing argument to %s", argv[i]);
        out = fopen(argv[++i], "wb");
        if( out==0 ) cmdlineError("cannot open: %s", argv[i]);
        xDiff = changeset_one_table;
        neverUseTransaction = 1;
      }else
      if( strcmp(z,"debug")==0 ){
        if( i==argc-1 ) cmdlineError("missing argument to %s", argv[i]);
        g.fDebug = strtol(argv[++i], 0, 0);
      }else
      if( strcmp(z,"help")==0 ){
        showHelp();
        return 0;
      }else

      if( strcmp(z,"lib")==0 || strcmp(z,"L")==0 ){
        if( i==argc-1 ) cmdlineError("missing argument to %s", argv[i]);
        azExt = realloc(azExt, sizeof(azExt[0])*(nExt+1));
        if( azExt==0 ) cmdlineError("out of memory");
        azExt[nExt++] = argv[++i];
      }else

      if( strcmp(z,"primarykey")==0 ){
        g.bSchemaPK = 1;
      }else
      if( strcmp(z,"rbu")==0 ){
        xDiff = rbudiff_one_table;
      }else
      if( strcmp(z,"schema")==0 ){
        g.bSchemaOnly = 1;
      }else
      if( strcmp(z,"summary")==0 ){
        xDiff = summarize_one_table;
      }else
      if( strcmp(z,"table")==0 ){
        if( i==argc-1 ) cmdlineError("missing argument to %s", argv[i]);
        zTab = argv[++i];
      }else
      if( strcmp(z,"transaction")==0 ){
        useTransaction = 1;
      }else
      if( strcmp(z,"vtab")==0 ){
        g.bHandleVtab = 1;
      }else
      {
        cmdlineError("unknown option: %s", argv[i]);
      }
    }else if( zDb1==0 ){
      zDb1 = argv[i];
    }else if( zDb2==0 ){
      zDb2 = argv[i];
    }else{
      cmdlineError("unknown argument: %s", argv[i]);
    }
  }
  if( zDb2==0 ){
    cmdlineError("two database arguments required");
  }
  rc = sqlite3_open(zDb1, &g.db);
  if( rc ){
    cmdlineError("cannot open database file \"%s\"", zDb1);
  }
  rc = sqlite3_exec(g.db, "SELECT * FROM sqlite_master", 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    cmdlineError("\"%s\" does not appear to be a valid SQLite database", zDb1);
  }

  sqlite3_enable_load_extension(g.db, 1);
  for(i=0; i<nExt; i++){
    rc = sqlite3_load_extension(g.db, azExt[i], 0, &zErrMsg);
    if( rc || zErrMsg ){
      cmdlineError("error loading %s: %s", azExt[i], zErrMsg);
    }
  }
  free(azExt);

  zSql = sqlite3_mprintf("ATTACH %Q as aux;", zDb2);
  rc = sqlite3_exec(g.db, zSql, 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    cmdlineError("cannot attach database \"%s\"", zDb2);
  }
  rc = sqlite3_exec(g.db, "SELECT * FROM aux.sqlite_master", 0, 0, &zErrMsg);
  if( rc || zErrMsg ){
    cmdlineError("\"%s\" does not appear to be a valid SQLite database", zDb2);
  }

  if( neverUseTransaction ) useTransaction = 0;
  if( useTransaction ) fprintf(out, "BEGIN TRANSACTION;\n");
  if( xDiff==rbudiff_one_table ){
    fprintf(out, "CREATE TABLE IF NOT EXISTS rbu_count"
           "(tbl TEXT PRIMARY KEY COLLATE NOCASE, cnt INTEGER) "
           "WITHOUT ROWID;\n"
    );
  }
  if( zTab ){
    xDiff(zTab, out);
  }else{

    pStmt = db_prepare("%s", all_tables_sql() );
    while( SQLITE_ROW==sqlite3_step(pStmt) ){
      xDiff((const char*)sqlite3_column_text(pStmt,0), out);
    }
    sqlite3_finalize(pStmt);
  }
  if( useTransaction ) printf("COMMIT;\n");



  sqlite3_close(g.db);
  return 0;
}
