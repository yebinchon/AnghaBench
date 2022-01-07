
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int ReCompiled ;


 char* re_compile (int **,char const*,int ) ;
 int re_free (int *) ;
 int re_match (int *,unsigned char const*,int) ;
 int * sqlite3_get_auxdata (int *,int ) ;
 int sqlite3_result_error (int *,char const*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_set_auxdata (int *,int ,int *,void (*) (void*)) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void re_sql_func(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  ReCompiled *pRe;
  const char *zPattern;
  const unsigned char *zStr;
  const char *zErr;
  int setAux = 0;

  pRe = sqlite3_get_auxdata(context, 0);
  if( pRe==0 ){
    zPattern = (const char*)sqlite3_value_text(argv[0]);
    if( zPattern==0 ) return;
    zErr = re_compile(&pRe, zPattern, 0);
    if( zErr ){
      re_free(pRe);
      sqlite3_result_error(context, zErr, -1);
      return;
    }
    if( pRe==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }
    setAux = 1;
  }
  zStr = (const unsigned char*)sqlite3_value_text(argv[1]);
  if( zStr!=0 ){
    sqlite3_result_int(context, re_match(pRe, zStr, -1));
  }
  if( setAux ){
    sqlite3_set_auxdata(context, 0, pRe, (void(*)(void*))re_free);
  }
}
