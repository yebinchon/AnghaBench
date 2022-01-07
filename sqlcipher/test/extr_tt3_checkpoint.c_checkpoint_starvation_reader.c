
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_15__ {int member_0; } ;
struct TYPE_14__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int CHECKPOINT_STARVATION_READMS ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ execsql_i64 (TYPE_2__*,TYPE_1__*,char*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 int test_error (TYPE_2__*,char*,scalar_t__,scalar_t__) ;
 int timetostop (TYPE_2__*) ;
 int usleep (int) ;

__attribute__((used)) static char *checkpoint_starvation_reader(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    i64 iCount1, iCount2;
    sql_script(&err, &db, "BEGIN");
    iCount1 = execsql_i64(&err, &db, "SELECT count(x) FROM t1");
    usleep(CHECKPOINT_STARVATION_READMS*1000);
    iCount2 = execsql_i64(&err, &db, "SELECT count(x) FROM t1");
    sql_script(&err, &db, "COMMIT");

    if( iCount1!=iCount2 ){
      test_error(&err, "Isolation failure - %lld %lld", iCount1, iCount2);
    }
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return 0;
}
