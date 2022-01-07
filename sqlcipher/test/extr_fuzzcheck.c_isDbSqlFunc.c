
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ isDbSql (unsigned char*,int) ;
 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;

__attribute__((used)) static void isDbSqlFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int n = sqlite3_value_bytes(argv[0]);
  unsigned char *a = (unsigned char*)sqlite3_value_blob(argv[0]);
  sqlite3_result_int(context, a!=0 && n>0 && isDbSql(a,n));
}
