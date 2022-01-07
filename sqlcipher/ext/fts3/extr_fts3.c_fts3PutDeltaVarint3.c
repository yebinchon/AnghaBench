
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int assert (int) ;
 int sqlite3Fts3PutVarint (char*,scalar_t__) ;

__attribute__((used)) static void fts3PutDeltaVarint3(
  char **pp,
  int bDescIdx,
  sqlite3_int64 *piPrev,
  int *pbFirst,
  sqlite3_int64 iVal
){
  sqlite3_int64 iWrite;
  if( bDescIdx==0 || *pbFirst==0 ){
    iWrite = iVal - *piPrev;
  }else{
    iWrite = *piPrev - iVal;
  }
  assert( *pbFirst || *piPrev==0 );
  assert( *pbFirst==0 || iWrite>0 );
  *pp += sqlite3Fts3PutVarint(*pp, iWrite);
  *piPrev = iVal;
  *pbFirst = 1;
}
