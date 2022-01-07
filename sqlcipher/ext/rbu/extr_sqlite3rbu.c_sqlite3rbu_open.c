
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3rbu ;


 int * openRbuHandle (char const*,char const*,char const*) ;
 int * rbuMisuseError () ;

sqlite3rbu *sqlite3rbu_open(
  const char *zTarget,
  const char *zRbu,
  const char *zState
){
  if( zTarget==0 || zRbu==0 ){ return rbuMisuseError(); }

  return openRbuHandle(zTarget, zRbu, zState);
}
