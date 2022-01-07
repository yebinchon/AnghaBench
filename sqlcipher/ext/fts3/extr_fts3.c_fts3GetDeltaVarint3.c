
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int sqlite3Fts3GetVarint (char*,scalar_t__*) ;

__attribute__((used)) static void fts3GetDeltaVarint3(
  char **pp,
  char *pEnd,
  int bDescIdx,
  sqlite3_int64 *pVal
){
  if( *pp>=pEnd ){
    *pp = 0;
  }else{
    sqlite3_int64 iVal;
    *pp += sqlite3Fts3GetVarint(*pp, &iVal);
    if( bDescIdx ){
      *pVal -= iVal;
    }else{
      *pVal += iVal;
    }
  }
}
