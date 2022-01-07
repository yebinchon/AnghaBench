
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int member_0; } ;
typedef TYPE_1__ Threadset ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_17__ {int member_0; } ;
typedef TYPE_2__ Sqlite ;
typedef TYPE_3__ Error ;


 int closedb (TYPE_3__*,TYPE_2__*) ;
 int join_all_threads (TYPE_3__*,TYPE_1__*) ;
 int launch_thread (TYPE_3__*,TYPE_1__*,int ,int ) ;
 int opendb (TYPE_3__*,TYPE_2__*,char*,int) ;
 int print_and_free_err (TYPE_3__*) ;
 int setstoptime (TYPE_3__*,int) ;
 int sql_script (TYPE_3__*,TYPE_2__*,char*) ;
 int walthread4_reader_thread ;
 int walthread4_writer_thread ;

__attribute__((used)) static void walthread4(int nMs){
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};

  opendb(&err, &db, "test.db", 1);
  sql_script(&err, &db,
      "PRAGMA journal_mode = WAL;"
      "CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE);"
  );
  closedb(&err, &db);

  setstoptime(&err, nMs);
  launch_thread(&err, &threads, walthread4_reader_thread, 0);
  launch_thread(&err, &threads, walthread4_writer_thread, 0);
  join_all_threads(&err, &threads);

  print_and_free_err(&err);
}
