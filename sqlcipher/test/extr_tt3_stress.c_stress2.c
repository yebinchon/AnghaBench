
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int aTask ;
struct TYPE_18__ {int member_0; } ;
typedef TYPE_1__ Threadset ;
struct TYPE_20__ {int member_0; } ;
struct TYPE_19__ {int member_0; } ;
typedef TYPE_2__ Sqlite ;
typedef TYPE_3__ Error ;


 int closedb (TYPE_3__*,TYPE_2__*) ;
 int join_all_threads (TYPE_3__*,TYPE_1__*) ;
 int launch_thread (TYPE_3__*,TYPE_1__*,int ,void*) ;
 int opendb (TYPE_3__*,TYPE_2__*,char const*,int) ;
 int print_and_free_err (TYPE_3__*) ;
 int setstoptime (TYPE_3__*,int) ;
 int sql_script (TYPE_3__*,TYPE_2__*,char*) ;
 int sqlite3_enable_shared_cache (int) ;
 int stress2_launch_thread_loop (TYPE_3__*,TYPE_1__*,char const*,void (*) (Error*,Sqlite*,int)) ;
 int stress2_workload1 ;
 int stress2_workload10 ;
 int stress2_workload11 ;
 int stress2_workload14 ;
 int stress2_workload17 ;
 int stress2_workload19 ;
 int stress2_workload2 ;
 int stress2_workload3 ;
 int stress2_workload4 ;
 int stress2_workload5 ;
 int stress2_workload6 ;
 int stress2_workload7 ;
 int stress2_workload8 ;
 int stress2_workload9 ;

__attribute__((used)) static void stress2(int nMs){
  struct Stress2Task {
    void (*x)(Error*,Sqlite*,int);
  } aTask[] = {
    { stress2_workload1 },
    { stress2_workload2 },
    { stress2_workload3 },
    { stress2_workload4 },
    { stress2_workload5 },
    { stress2_workload6 },
    { stress2_workload7 },
    { stress2_workload8 },
    { stress2_workload9 },
    { stress2_workload10 },
    { stress2_workload11 },
    { stress2_workload14 },
    { stress2_workload17 },
  };
  const char *zDb = "test.db";

  int i;
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};


  opendb(&err, &db, zDb, 1);
  sql_script(&err, &db,
      "CREATE TABLE IF NOT EXISTS t0(x PRIMARY KEY, y, z);"
      "CREATE INDEX IF NOT EXISTS i0 ON t0(y);"
  );
  closedb(&err, &db);

  setstoptime(&err, nMs);
  sqlite3_enable_shared_cache(1);

  for(i=0; i<sizeof(aTask)/sizeof(aTask[0]); i++){
    stress2_launch_thread_loop(&err, &threads, zDb, aTask[i].x);
  }
  launch_thread(&err, &threads, stress2_workload19, (void*)zDb);
  launch_thread(&err, &threads, stress2_workload19, (void*)zDb);

  join_all_threads(&err, &threads);
  sqlite3_enable_shared_cache(0);
  print_and_free_err(&err);
}
