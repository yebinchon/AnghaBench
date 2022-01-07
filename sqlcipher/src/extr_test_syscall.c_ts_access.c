
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orig_access (char const*,int) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int ts_access(const char *zPath, int mode){
  if( tsIsFail() ){
    return -1;
  }
  return orig_access(zPath, mode);
}
