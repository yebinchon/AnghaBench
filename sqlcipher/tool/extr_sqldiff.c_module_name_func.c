
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zToken ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 int assert (int) ;
 char* gobble_token (char const*,char*,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void module_name_func(
  sqlite3_context *pCtx,
  int nVal, sqlite3_value **apVal
){
  const char *zSql;
  char zToken[32];

  assert( nVal==1 );
  zSql = (const char*)sqlite3_value_text(apVal[0]);

  zSql = gobble_token(zSql, zToken, sizeof(zToken));
  if( zSql==0 || sqlite3_stricmp(zToken, "create") ) return;
  zSql = gobble_token(zSql, zToken, sizeof(zToken));
  if( zSql==0 || sqlite3_stricmp(zToken, "virtual") ) return;
  zSql = gobble_token(zSql, zToken, sizeof(zToken));
  if( zSql==0 || sqlite3_stricmp(zToken, "table") ) return;
  zSql = gobble_token(zSql, zToken, sizeof(zToken));
  if( zSql==0 ) return;
  zSql = gobble_token(zSql, zToken, sizeof(zToken));
  if( zSql==0 || sqlite3_stricmp(zToken, "using") ) return;
  zSql = gobble_token(zSql, zToken, sizeof(zToken));

  sqlite3_result_text(pCtx, zToken, -1, SQLITE_TRANSIENT);
}
