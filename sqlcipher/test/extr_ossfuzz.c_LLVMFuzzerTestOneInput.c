
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int cx ;
struct TYPE_3__ {char execCnt; int nCb; scalar_t__ mxInterval; int db; scalar_t__ iLastCb; scalar_t__ iCutoffTime; } ;
typedef TYPE_1__ FuzzCtx ;


 int FUZZ_SHOW_ERRORS ;
 int FUZZ_SHOW_MAX_DELAY ;
 int SQLITE_DBCONFIG_ENABLE_FKEY ;
 int SQLITE_LIMIT_LENGTH ;
 int SQLITE_LIMIT_VDBE_OP ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_MEMORY ;
 int SQLITE_OPEN_READWRITE ;
 int block_debug_pragmas ;
 int exec_handler ;
 int mDebug ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;
 int progress_handler ;
 int sqlite3_close (int ) ;
 int sqlite3_complete (char*) ;
 int sqlite3_db_config (int ,int ,char,int*) ;
 int sqlite3_exec (int ,char*,int ,void*,char**) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_initialize () ;
 int sqlite3_limit (int ,int ,int) ;
 char* sqlite3_mprintf (char*,int,char const*) ;
 int sqlite3_open_v2 (char*,int *,int,int ) ;
 int sqlite3_progress_handler (int ,int,int ,void*) ;
 int sqlite3_set_authorizer (int ,int ,int ) ;
 scalar_t__ timeOfDay () ;

int LLVMFuzzerTestOneInput(const uint8_t* data, size_t size) {
  char *zErrMsg = 0;
  uint8_t uSelector;
  int rc;
  char *zSql;
  FuzzCtx cx;

  memset(&cx, 0, sizeof(cx));
  if( size<3 ) return 0;




  if( data[1]=='\n' ){
    uSelector = data[0]; data += 2; size -= 2;
  }else{
    uSelector = 0xfd;
  }


  if( sqlite3_initialize() ) return 0;
  rc = sqlite3_open_v2("fuzz.db", &cx.db,
           SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE | SQLITE_OPEN_MEMORY, 0);
  if( rc ) return 0;






  cx.iLastCb = timeOfDay();
  cx.iCutoffTime = cx.iLastCb + 10000;

  sqlite3_progress_handler(cx.db, 10, progress_handler, (void*)&cx);



  sqlite3_limit(cx.db, SQLITE_LIMIT_VDBE_OP, 25000);




  sqlite3_limit(cx.db, SQLITE_LIMIT_LENGTH, 50000);


  sqlite3_db_config(cx.db, SQLITE_DBCONFIG_ENABLE_FKEY, uSelector&1, &rc);
  uSelector >>= 1;


  sqlite3_set_authorizer(cx.db, block_debug_pragmas, 0);



  cx.execCnt = uSelector + 1;



  zSql = sqlite3_mprintf("%.*s", (int)size, data);

  sqlite3_complete(zSql);

  sqlite3_exec(cx.db, zSql, exec_handler, (void*)&cx, &zErrMsg);


  if( (mDebug & FUZZ_SHOW_ERRORS)!=0 && zErrMsg ){
    printf("Error: %s\n", zErrMsg);
  }


  sqlite3_free(zErrMsg);
  sqlite3_free(zSql);
  sqlite3_exec(cx.db, "PRAGMA temp_store_directory=''", 0, 0, 0);
  sqlite3_close(cx.db);

  if( mDebug & FUZZ_SHOW_MAX_DELAY ){
    printf("Progress callback count....... %d\n", cx.nCb);
    printf("Max time between callbacks.... %d ms\n", (int)cx.mxInterval);
  }
  return 0;
}
