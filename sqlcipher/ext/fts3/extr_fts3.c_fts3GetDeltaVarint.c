
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int sqlite3Fts3GetVarint (char*,scalar_t__*) ;

__attribute__((used)) static void fts3GetDeltaVarint(char **pp, sqlite3_int64 *pVal){
  sqlite3_int64 iVal;
  *pp += sqlite3Fts3GetVarint(*pp, &iVal);
  *pVal += iVal;
}
