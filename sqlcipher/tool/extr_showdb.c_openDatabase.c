
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_URI ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;
 int sqlite3_close (int *) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_open_v2 (char const*,int **,int,int ) ;
 int stderr ;

__attribute__((used)) static sqlite3 *openDatabase(const char *zPrg, const char *zName){
  sqlite3 *db = 0;
  int flags = SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI;
  int rc = sqlite3_open_v2(zName, &db, flags, 0);
  if( rc!=SQLITE_OK ){
    const char *zErr = sqlite3_errmsg(db);
    fprintf(stderr, "%s: can't open %s (%s)\n", zPrg, zName, zErr);
    sqlite3_close(db);
    exit(1);
  }
  return db;
}
