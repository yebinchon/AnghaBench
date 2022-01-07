
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite ;


 int SIGKILL ;
 int SQLITE_CORRUPT ;
 int SQLITE_OK ;
 scalar_t__ access (char*,int ) ;
 int exit (int) ;
 int getpid () ;
 int kill (int,int ) ;
 int printf (char*,...) ;
 int rand () ;
 int sqlite_exec_printf (int *,char*,int ,int ,char**,int ,int ,char*) ;
 int * sqlite_open (char*,int ,char**) ;
 int srand (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int system (char*) ;
 int unlink (char*) ;

__attribute__((used)) static void do_some_sql(int parent){
  char *zErr;
  int rc = SQLITE_OK;
  sqlite *db;
  int cnt = 0;
  static char zBig[] =
    "-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    "-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  if( access("./test.db-journal",0)==0 ){
                                                                                    unlink("test.db-saved");
    system("cp test.db test.db-saved");
    unlink("test.db-journal-saved");
    system("cp test.db-journal test.db-journal-saved");
  }
  db = sqlite_open("./test.db", 0, &zErr);
  if( db==0 ){
    printf("ERROR: %s\n", zErr);
    if( strcmp(zErr,"database disk image is malformed")==0 ){
      kill(parent, SIGKILL);
    }
    exit(1);
  }
  srand(getpid());
  while( rc==SQLITE_OK ){
    cnt++;
    rc = sqlite_exec_printf(db,
       "INSERT INTO t1 VALUES(%d,'%d%s')", 0, 0, &zErr,
       rand(), rand(), zBig);
  }
  if( rc!=SQLITE_OK ){
    printf("ERROR #%d: %s\n", rc, zErr);
    if( rc==SQLITE_CORRUPT ){
      kill(parent, SIGKILL);
    }
  }
  printf("pid %d: cnt=%d\n", getpid(), cnt);
}
