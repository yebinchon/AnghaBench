
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;


 int sqlite3_aggregate_count (int *) ;
 int sqlite3_result_int (int *,int ) ;

__attribute__((used)) static void legacyCountFinalize(sqlite3_context *context){
  sqlite3_result_int(context, sqlite3_aggregate_count(context));
}
