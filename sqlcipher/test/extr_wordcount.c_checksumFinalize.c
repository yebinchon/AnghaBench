
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 int finalHash (unsigned int*,char*) ;
 unsigned int* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void checksumFinalize(sqlite3_context *context){
  unsigned int *a;
  char zResult[24];
  a = sqlite3_aggregate_context(context, 0);
  if( a ){
    finalHash(a, zResult);
    sqlite3_result_text(context, zResult, -1, SQLITE_TRANSIENT);
  }
}
