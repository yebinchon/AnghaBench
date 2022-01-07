
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int member_0; } ;
struct TYPE_18__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*) ;
 char* execsql_text (TYPE_2__*,TYPE_1__*,int,char const*) ;
 int integrity_check (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 char* sqlite3_mprintf (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_error (TYPE_2__*,char*,char*,char*,char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *walthread1_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int nIter = 0;

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    const char *azSql[] = {
      "SELECT md5sum(x) FROM t1 WHERE rowid != (SELECT max(rowid) FROM t1)",
      "SELECT x FROM t1 WHERE rowid = (SELECT max(rowid) FROM t1)",
    };
    char *z1, *z2, *z3;

    execsql(&err, &db, "BEGIN");
    integrity_check(&err, &db);
    z1 = execsql_text(&err, &db, 1, azSql[0]);
    z2 = execsql_text(&err, &db, 2, azSql[1]);
    z3 = execsql_text(&err, &db, 3, azSql[0]);
    execsql(&err, &db, "COMMIT");

    if( strcmp(z1, z2) || strcmp(z1, z3) ){
      test_error(&err, "Failed read: %s %s %s", z1, z2, z3);
    }

    sql_script(&err, &db,
        "BEGIN;"
          "INSERT INTO t1 VALUES(randomblob(100));"
          "INSERT INTO t1 VALUES(randomblob(100));"
          "INSERT INTO t1 SELECT md5sum(x) FROM t1;"
        "COMMIT;"
    );
    nIter++;
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return sqlite3_mprintf("%d iterations", nIter);
}
