
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orig_open (char const*,int,int) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_open(const char *zFile, int flags, int mode){
  if( tsIsFailErrno("open") ){
    return -1;
  }
  return orig_open(zFile, flags, mode);
}
