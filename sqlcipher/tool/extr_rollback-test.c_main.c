
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int * openDb (char*) ;
 int printf (char*) ;
 int runSql (int *,char*) ;
 int sprintf (char*,char*,int) ;
 int sqlite3_close (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int usage (char*) ;
 char* zReply ;

int main(int argc, char **argv){
  sqlite3 *db;
  int i;

  if( argc<3 ) usage(argv[0]);
  if( strcmp(argv[1], "new")==0 ){
    db = openDb(argv[argc-1]);
    for(i=2; i<argc-1; i++){
      if( strcmp(argv[i],"-utf8")==0 ){
        runSql(db, "PRAGMA encoding=UTF8");
      }else if( strcmp(argv[i], "-utf16le")==0 ){
        runSql(db, "PRAGMA encoding=UTF16LE");
      }else if( strcmp(argv[i], "-utf16be")==0 ){
        runSql(db, "PRAGMA encoding=UTF16BE");
      }else if( strncmp(argv[i], "-pagesize=", 10)==0 ){
        int szPg = atoi(&argv[i][10]);
        char zBuf[100];
        sprintf(zBuf, "PRAGMA pagesize=%d", szPg);
        runSql(db, zBuf);
      }else{
        fprintf(stderr, "unknown option %s\n", argv[i]);
        usage(argv[0]);
      }
    }
    runSql(db,
       "BEGIN;"
       "CREATE TABLE t1(x INTEGER PRIMARY KEY, y);"
       "INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');"
       "INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "INSERT INTO t1(y) SELECT y FROM t1;"
       "UPDATE t1 SET y=(y || x);"
       "CREATE INDEX t1y ON t1(y);"
       "COMMIT;"
    );
    sqlite3_close(db);
  }else if( strcmp(argv[1], "check")==0 ){
    db = openDb(argv[argc-1]);
    runSql(db, "PRAGMA integrity_check");
    if( strcmp(zReply, "ok")!=0 ){
      fprintf(stderr, "Integrity check: %s\n", zReply);
      exit(1);
    }
    runSql(db,
      "SELECT count(*) FROM t1 WHERE y<>('abcdefghijklmnopqrstuvwxyz' || x)"
    );
    if( strcmp(zReply, "0")!=0 ){
      fprintf(stderr, "Wrong content\n");
      exit(1);
    }
    printf("Ok\n");
  }else if( strcmp(argv[1], "crash")==0 ){
    db = openDb(argv[argc-1]);
    for(i=2; i<argc-1; i++){
      if( strcmp(argv[i],"-wal")==0 ){
        runSql(db, "PRAGMA journal_mode=WAL");
      }else if( strcmp(argv[i], "-rollback")==0 ){
        runSql(db, "PRAGMA journal_mode=DELETE");
      }else{
        fprintf(stderr, "unknown option %s\n", argv[i]);
        usage(argv[0]);
      }
    }
    runSql(db,
      "PRAGMA cache_size=10;"
      "BEGIN;"
      "UPDATE t1 SET y=(y || -x)"
    );
    exit(0);
  }else{
    usage(argv[0]);
  }
  return 0;
}
