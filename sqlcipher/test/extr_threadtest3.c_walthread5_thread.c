
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_12__ {int member_0; } ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql_i64 (TYPE_2__*,TYPE_1__*,char*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int test_error (TYPE_2__*,char*,int) ;

__attribute__((used)) static char *walthread5_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  i64 nRow;

  opendb(&err, &db, "test.db", 0);
  nRow = execsql_i64(&err, &db, "SELECT count(*) FROM t1");
  closedb(&err, &db);

  if( nRow!=65536 ) test_error(&err, "Bad row count: %d", (int)nRow);
  print_and_free_err(&err);
  return 0;
}
