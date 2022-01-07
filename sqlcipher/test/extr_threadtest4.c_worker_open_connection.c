
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tid; int db; } ;
typedef TYPE_1__ WorkerInfo ;


 int SQLITE_OK ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_SHAREDCACHE ;
 int check_oom (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,int) ;
 int run_sql (TYPE_1__*,char*,...) ;
 int sqlite3_busy_timeout (int ,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,unsigned char const) ;
 int sqlite3_open_v2 (char*,int *,int,int ) ;
 int stderr ;
 int worker_trace (TYPE_1__*,char*,char*) ;

__attribute__((used)) static void worker_open_connection(WorkerInfo *p, int iCnt){
  char *zFile;
  int x;
  int rc;
  static const unsigned char aOrder[6][3] = {
    { 1, 2, 3},
    { 1, 3, 2},
    { 2, 1, 3},
    { 2, 3, 1},
    { 3, 1, 2},
    { 3, 2, 1}
  };
  x = (p->tid + iCnt) % 6;
  zFile = sqlite3_mprintf("tt4-test%d.db", aOrder[x][0]);
  check_oom(zFile);
  worker_trace(p, "open %s", zFile);
  rc = sqlite3_open_v2(zFile, &p->db,
                       SQLITE_OPEN_READWRITE|SQLITE_OPEN_SHAREDCACHE, 0);
  if( rc!=SQLITE_OK ){
    fprintf(stderr, "sqlite_open_v2(%s) failed on thread %d\n",
            zFile, p->tid);
    exit(1);
  }
  sqlite3_free(zFile);
  run_sql(p, "PRAGMA read_uncommitted=ON;");
  sqlite3_busy_timeout(p->db, 10000);
  run_sql(p, "PRAGMA synchronous=OFF;");
  run_sql(p, "ATTACH 'tt4-test%d.db' AS aux1", aOrder[x][1]);
  run_sql(p, "ATTACH 'tt4-test%d.db' AS aux2", aOrder[x][2]);
}
