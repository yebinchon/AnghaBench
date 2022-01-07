
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_BLOB ;
 int SQLITE_TEXT ;
 int lsm1PutVarint64 (int *,scalar_t__) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void lsm1KeyFromValue(
  int keyType,
  sqlite3_value *pValue,
  u8 *pBuf,
  const u8 **ppKey,
  int *pnKey
){
  if( keyType==SQLITE_BLOB ){
    *ppKey = (const u8*)sqlite3_value_blob(pValue);
    *pnKey = sqlite3_value_bytes(pValue);
  }else if( keyType==SQLITE_TEXT ){
    *ppKey = (const u8*)sqlite3_value_text(pValue);
    *pnKey = sqlite3_value_bytes(pValue);
  }else{
    sqlite3_int64 v = sqlite3_value_int64(pValue);
    if( v<0 ) v = 0;
    *pnKey = lsm1PutVarint64(pBuf, v);
    *ppKey = pBuf;
  }
}
