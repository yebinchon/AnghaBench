
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int azDb ;
typedef int Str ;


 int SIGALRM ;
 int SQLITE_CONFIG_HEAP ;
 int SQLITE_CONFIG_LOG ;
 int SQLITE_CONFIG_LOOKASIDE ;
 int SQLITE_OK ;
 int SQLITE_OPEN_READWRITE ;
 scalar_t__ SQLITE_ROW ;
 unsigned int SQL_OUTPUT ;
 unsigned int SQL_TRACE ;
 int StrAppend (int *,char const*) ;
 int StrFree (int *) ;
 int StrInit (int *) ;
 int StrStr (int *) ;
 int createVFile (char*,char*) ;
 int fatalError (char*,...) ;
 int fflush (int ) ;
 int formatVfs () ;
 int free (char**) ;
 int inmemVfsRegister () ;
 int integerValue (char*) ;
 void* malloc (int) ;
 int printf (char*,char*) ;
 int progressHandler ;
 char** realloc (char**,int) ;
 int reformatVfs () ;
 int runSql (int *,int ,unsigned int) ;
 int setAlarm (int) ;
 int showHelp (char*) ;
 int signal (int ,int ) ;
 int sqlLog ;
 int sqlite3_close (int *) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_config (int ,void*,...) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_memory_used () ;
 int sqlite3_open_v2 (char*,int **,int ,char*) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 int sqlite3_progress_handler (int *,int,int ,int*) ;
 scalar_t__ sqlite3_step (int *) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int timeoutHandler ;

int main(int argc, char **argv){
  int i;
  int nDb = 0;
  char **azDb = 0;
  int verboseFlag = 0;
  int noLookaside = 0;
  int vdbeLimitFlag = 0;
  int nHeap = 0;
  int iTimeout = 0;
  int rc;
  sqlite3 *db;
  sqlite3_stmt *pStmt;
  Str sql;
  unsigned runFlags = 0;

  for(i=1; i<argc; i++){
    char *z = argv[i];
    if( z[0]!='-' ){
      azDb = realloc(azDb, sizeof(azDb[0])*(nDb+1));
      if( azDb==0 ) fatalError("out of memory");
      azDb[nDb++] = z;
      continue;
    }
    z++;
    if( z[0]=='-' ) z++;
    if( strcmp(z, "help")==0 ){
      showHelp(argv[0]);
    }else if( strcmp(z, "limit-mem")==0 ){
      if( i==argc-1 ) fatalError("missing argument to %s", argv[i]);
      nHeap = integerValue(argv[++i]);
    }else if( strcmp(z, "no-lookaside")==0 ){
      noLookaside = 1;
    }else if( strcmp(z, "timeout")==0 ){
      if( i==argc-1 ) fatalError("missing argument to %s", argv[i]);
      iTimeout = integerValue(argv[++i]);
    }else if( strcmp(z, "trace")==0 ){
      runFlags |= SQL_OUTPUT|SQL_TRACE;
    }else if( strcmp(z, "limit-vdbe")==0 ){
      vdbeLimitFlag = 1;
    }else if( strcmp(z, "v")==0 || strcmp(z, "verbose")==0 ){
      verboseFlag = 1;
      runFlags |= SQL_TRACE;
    }else{
      fatalError("unknown command-line option: \"%s\"\n", argv[i]);
    }
  }
  if( nDb==0 ){
    showHelp(argv[0]);
  }
  if( verboseFlag ){
    sqlite3_config(SQLITE_CONFIG_LOG, sqlLog);
  }
  if( nHeap>0 ){
    void *pHeap = malloc( nHeap );
    if( pHeap==0 ) fatalError("cannot allocate %d-byte heap\n", nHeap);
    rc = sqlite3_config(SQLITE_CONFIG_HEAP, pHeap, nHeap, 32);
    if( rc ) fatalError("heap configuration failed: %d\n", rc);
  }
  if( noLookaside ){
    sqlite3_config(SQLITE_CONFIG_LOOKASIDE, 0, 0);
  }
  inmemVfsRegister();
  formatVfs();
  StrInit(&sql);

  signal(SIGALRM, timeoutHandler);

  for(i=0; i<nDb; i++){
    if( verboseFlag && nDb>1 ){
      printf("DATABASE-FILE: %s\n", azDb[i]);
      fflush(stdout);
    }
    if( iTimeout ) setAlarm(iTimeout);
    createVFile("test.db", azDb[i]);
    rc = sqlite3_open_v2("test.db", &db, SQLITE_OPEN_READWRITE, "inmem");
    if( rc ){
      printf("cannot open test.db for \"%s\"\n", azDb[i]);
      reformatVfs();
      continue;
    }

    if( vdbeLimitFlag ){
      sqlite3_progress_handler(db, 100000, progressHandler, &vdbeLimitFlag);
    }

    rc = sqlite3_prepare_v2(db, "SELECT sql FROM autoexec", -1, &pStmt, 0);
    if( rc==SQLITE_OK ){
      while( SQLITE_ROW==sqlite3_step(pStmt) ){
        StrAppend(&sql, (const char*)sqlite3_column_text(pStmt, 0));
        StrAppend(&sql, "\n");
      }
    }
    sqlite3_finalize(pStmt);
    StrAppend(&sql, "PRAGMA integrity_check;\n");
    runSql(db, StrStr(&sql), runFlags);
    sqlite3_close(db);
    reformatVfs();
    StrFree(&sql);
    if( sqlite3_memory_used()>0 ){
      free(azDb);
      reformatVfs();
      fatalError("memory leak of %lld bytes", sqlite3_memory_used());
    }
  }
  StrFree(&sql);
  reformatVfs();
  return 0;
}
