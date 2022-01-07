
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3rbu ;
typedef int sqlite3 ;


 int SQLITE_FCNTL_VFSNAME ;
 int fprintf (int ,char*,...) ;
 int sqlite3_file_control (int *,char*,int ,char**) ;
 int sqlite3_free (char*) ;
 int * sqlite3rbu_db (int *,int ) ;
 int stdout ;

void report_rbu_vfs(sqlite3rbu *pRbu){
  sqlite3 *db = sqlite3rbu_db(pRbu, 0);
  if( db ){
    char *zName = 0;
    sqlite3_file_control(db, "main", SQLITE_FCNTL_VFSNAME, &zName);
    if( zName ){
      fprintf(stdout, "using vfs \"%s\"\n", zName);
    }else{
      fprintf(stdout, "vfs name not available\n");
    }
    sqlite3_free(zName);
  }
}
