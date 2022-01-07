
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* orig_getcwd (char*,size_t) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static char *ts_getcwd(char *zPath, size_t nPath){
  if( tsIsFail() ){
    return ((void*)0);
  }
  return orig_getcwd(zPath, nPath);
}
