
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_FCNTL_VFSNAME ;
 int UNUSED_PARAMETER (int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_file_control (int *,char*,int ,char**) ;
 int sqlite3_free ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void vfsNameFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  char *zVfs = 0;
  UNUSED_PARAMETER(argc);
  UNUSED_PARAMETER(argv);
  sqlite3_file_control(db, "main", SQLITE_FCNTL_VFSNAME, &zVfs);
  if( zVfs ){
    sqlite3_result_text(context, zVfs, -1, sqlite3_free);
  }
}
