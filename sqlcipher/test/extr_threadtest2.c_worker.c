
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite ;


 int DB_FILE ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ all_stop ;
 int fprintf (int ,char*,int) ;
 int printf (char*,int,int) ;
 int sched_yield () ;
 int sqlite3_close (int *) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 scalar_t__ sqlite3_open (int ,int **) ;
 int stderr ;

void *worker(void *workerArg){
  sqlite *db;
  int id = (int)workerArg;
  int rc;
  int cnt = 0;
  fprintf(stderr, "Starting worker %d\n", id);
  while( !all_stop && cnt++<10000 ){
    if( cnt%100==0 ) printf("%d: %d\n", id, cnt);
    while( (sqlite3_open(DB_FILE, &db))!=SQLITE_OK ) sched_yield();
    sqlite3_exec(db, "PRAGMA synchronous=OFF", 0, 0, 0);

    if( all_stop ){ sqlite3_close(db); break; }

    rc = sqlite3_exec(db, "INSERT INTO t1 VALUES('bogus data')", 0, 0, 0);

    sqlite3_close(db);
  }
  fprintf(stderr, "Worker %d finished\n", id);
  return 0;
}
