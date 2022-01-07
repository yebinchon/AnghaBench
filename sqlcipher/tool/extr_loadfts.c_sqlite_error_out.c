
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 char* sqlite3_errmsg (int *) ;
 int stderr ;

__attribute__((used)) static void sqlite_error_out(const char *zText, sqlite3 *db){
  fprintf(stderr, "%s: %s\n", zText, sqlite3_errmsg(db));
  exit(-1);
}
