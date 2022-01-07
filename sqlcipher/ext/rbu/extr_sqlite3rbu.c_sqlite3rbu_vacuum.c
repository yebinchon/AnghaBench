
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3rbu ;


 scalar_t__ memcmp (char*,char const*,int) ;
 int * openRbuHandle (int ,char const*,char const*) ;
 int * rbuMisuseError () ;
 int strlen (char const*) ;

sqlite3rbu *sqlite3rbu_vacuum(
  const char *zTarget,
  const char *zState
){
  if( zTarget==0 ){ return rbuMisuseError(); }
  if( zState ){
    int n = strlen(zState);
    if( n>=7 && 0==memcmp("-vactmp", &zState[n-7], 7) ){
      return rbuMisuseError();
    }
  }

  return openRbuHandle(0, zTarget, zState);
}
