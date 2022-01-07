
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int assert (int) ;
 int sqlite3Fts3PutVarint (char*,scalar_t__) ;

__attribute__((used)) static void fts3PutDeltaVarint(
  char **pp,
  sqlite3_int64 *piPrev,
  sqlite3_int64 iVal
){
  assert( iVal-*piPrev > 0 || (*piPrev==0 && iVal==0) );
  *pp += sqlite3Fts3PutVarint(*pp, iVal-*piPrev);
  *piPrev = iVal;
}
