
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;


 int UNUSED_PARAMETER2 (int,int **) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_last_insert_rowid (int *) ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static void last_insert_rowid(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **NotUsed2
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  UNUSED_PARAMETER2(NotUsed, NotUsed2);



  sqlite3_result_int64(context, sqlite3_last_insert_rowid(db));
}
