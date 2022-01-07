
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite ;


 int SIGKILL ;
 int do_some_sql (int) ;
 int fork () ;
 int getpid () ;
 int kill (int,int ) ;
 int printf (char*,...) ;
 int rand () ;
 int sched_yield () ;
 int sqlite_close (int *) ;
 int sqlite_exec (int *,char*,int ,int ,int ) ;
 int * sqlite_open (char*,int ,char**) ;
 int unlink (char*) ;
 int usleep (int) ;
 int waitpid (int,int*,int ) ;

int main(int argc, char **argv){
  int i;
  sqlite *db;
  char *zErr;
  int status;
  int parent = getpid();

  unlink("test.db");
  unlink("test.db-journal");
  db = sqlite_open("test.db", 0, &zErr);
  if( db==0 ){
    printf("Cannot initialize: %s\n", zErr);
    return 1;
  }
  sqlite_exec(db, "CREATE TABLE t1(a,b)", 0, 0, 0);
  sqlite_close(db);
  for(i=0; i<10000; i++){
    int pid = fork();
    if( pid==0 ){
      sched_yield();
      do_some_sql(parent);
      return 0;
    }
    printf("test %d, pid=%d\n", i, pid);
    usleep(rand()%10000 + 1000);
    kill(pid, SIGKILL);
    waitpid(pid, &status, 0);
  }
  return 0;
}
