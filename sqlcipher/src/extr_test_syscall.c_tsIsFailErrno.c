
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int tsErrno (char const*) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int tsIsFailErrno(const char *zFunc){
  if( tsIsFail() ){
    errno = tsErrno(zFunc);
    return 1;
  }
  return 0;
}
