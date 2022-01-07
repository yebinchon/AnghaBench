
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_16__ {int member_0; } ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int PTR2INT (void*) ;
 scalar_t__ WALTHREAD3_NTHREAD ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql_i64 (TYPE_2__*,TYPE_1__*,char*,...) ;
 int integrity_check (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *walthread3_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  i64 iNextWrite;
  int iArg = PTR2INT(pArg);

  opendb(&err, &db, "test.db", 0);
  sql_script(&err, &db, "PRAGMA wal_autocheckpoint = 10");

  iNextWrite = iArg+1;
  while( 1 ){
    i64 sum1;
    i64 sum2;
    int stop = 0;

    while( 0==(stop = timetostop(&err)) ){
      i64 iMax = execsql_i64(&err, &db, "SELECT max(cnt) FROM t1");
      if( iMax+1==iNextWrite ) break;
    }
    if( stop ) break;

    sum1 = execsql_i64(&err, &db, "SELECT sum(cnt) FROM t1");
    sum2 = execsql_i64(&err, &db, "SELECT sum(sum1) FROM t1");
    execsql_i64(&err, &db,
        "INSERT INTO t1 VALUES(:iNextWrite, :iSum1, :iSum2)",
        &iNextWrite, &sum1, &sum2
    );
    integrity_check(&err, &db);

    iNextWrite += WALTHREAD3_NTHREAD;
  }

  closedb(&err, &db);
  print_and_free_err(&err);
  return 0;
}
