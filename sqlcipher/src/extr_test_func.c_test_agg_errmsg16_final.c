
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_TRANSIENT ;
 int sqlite3_aggregate_context (int *,int) ;
 int * sqlite3_context_db_handle (int *) ;
 void* sqlite3_errmsg16 (int *) ;
 int sqlite3_result_text16 (int *,void const*,int,int ) ;

__attribute__((used)) static void test_agg_errmsg16_final(sqlite3_context *ctx){

  const void *z;
  sqlite3 * db = sqlite3_context_db_handle(ctx);
  sqlite3_aggregate_context(ctx, 2048);
  z = sqlite3_errmsg16(db);
  sqlite3_result_text16(ctx, z, -1, SQLITE_TRANSIENT);

}
