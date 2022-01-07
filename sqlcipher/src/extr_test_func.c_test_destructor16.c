
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 int destructor ;
 int memcpy (char*,int ,int) ;
 int sqlite3_result_text16 (int *,char*,int,int ) ;
 int sqlite3_value_bytes16 (int *) ;
 int sqlite3_value_text16 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 char* testContextMalloc (int *,int) ;
 int test_destructor_count_var ;

__attribute__((used)) static void test_destructor16(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  char *zVal;
  int len;

  test_destructor_count_var++;
  assert( nArg==1 );
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  len = sqlite3_value_bytes16(argv[0]);
  zVal = testContextMalloc(pCtx, len+3);
  if( !zVal ){
    return;
  }
  zVal[len+1] = 0;
  zVal[len+2] = 0;
  zVal++;
  memcpy(zVal, sqlite3_value_text16(argv[0]), len);
  sqlite3_result_text16(pCtx, zVal, -1, destructor);
}
