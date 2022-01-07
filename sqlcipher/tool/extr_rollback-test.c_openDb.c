
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int sqlite3_close (int *) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_open (char const*,int **) ;
 int stderr ;

__attribute__((used)) static sqlite3 *openDb(const char *zFilename){
  int rc;
  sqlite3 *db;
  rc = sqlite3_open(zFilename, &db);
  if( rc ){
    fprintf(stderr, "Cannot open \"%s\": %s\n",
            zFilename, sqlite3_errmsg(db));
    sqlite3_close(db);
    exit(1);
  }
  return db;
}
