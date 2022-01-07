
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TEXT ;
 int assert (int) ;
 int sqlite3CreateFunc (int *,char*,int,int ,int ,void (*) (int *,int,int **),int ,int ,int ,int ,int ) ;
 int sqlite3OomFault (int *) ;
 int sqlite3_overload_function (int *,char*,int) ;

void sqlite3RegisterPerConnectionBuiltinFunctions(sqlite3 *db){
  int rc = sqlite3_overload_function(db, "MATCH", 2);







  assert( rc==SQLITE_NOMEM || rc==SQLITE_OK );
  if( rc==SQLITE_NOMEM ){
    sqlite3OomFault(db);
  }







}
