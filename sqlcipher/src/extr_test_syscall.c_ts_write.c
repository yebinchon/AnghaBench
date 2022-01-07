
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int orig_write (int,void const*,size_t) ;
 scalar_t__ tsErrno (char*) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_write(int fd, const void *aBuf, size_t nBuf){
  if( tsIsFailErrno("write") ){
    if( tsErrno("write")==EINTR ) orig_write(fd, aBuf, nBuf/2);
    return -1;
  }
  return orig_write(fd, aBuf, nBuf);
}
