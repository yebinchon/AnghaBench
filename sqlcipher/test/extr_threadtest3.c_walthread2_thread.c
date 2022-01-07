
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int member_0; } ;
struct TYPE_16__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int PTR2INT (void*) ;
 int SQLITE_BUSY ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ filesize (TYPE_2__*,char*) ;
 int integrity_check (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char const*) ;
 char* sqlite3_mprintf (char*,int,int) ;
 int test_error (TYPE_2__*,char*,int,int) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *walthread2_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int anTrans[2] = {0, 0};
  int iArg = PTR2INT(pArg);

  const char *zJournal = "PRAGMA journal_mode = WAL";
  if( iArg ){ zJournal = "PRAGMA journal_mode = DELETE"; }

  while( !timetostop(&err) ){
    int journal_exists = 0;
    int wal_exists = 0;

    opendb(&err, &db, "test.db", 0);

    sql_script(&err, &db, zJournal);
    clear_error(&err, SQLITE_BUSY);
    sql_script(&err, &db, "BEGIN");
    sql_script(&err, &db, "INSERT INTO t1 VALUES(NULL, randomblob(100))");

    journal_exists = (filesize(&err, "test.db-journal") >= 0);
    wal_exists = (filesize(&err, "test.db-wal") >= 0);
    if( (journal_exists+wal_exists)!=1 ){
      test_error(&err, "File system looks incorrect (%d, %d)",
          journal_exists, wal_exists
      );
    }
    anTrans[journal_exists]++;

    sql_script(&err, &db, "COMMIT");
    integrity_check(&err, &db);
    closedb(&err, &db);
  }

  print_and_free_err(&err);
  return sqlite3_mprintf("W %d R %d", anTrans[0], anTrans[1]);
}
