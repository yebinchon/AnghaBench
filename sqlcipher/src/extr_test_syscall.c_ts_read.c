
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orig_read (int,void*,size_t) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_read(int fd, void *aBuf, size_t nBuf){
  if( tsIsFailErrno("read") ){
    return -1;
  }
  return orig_read(fd, aBuf, nBuf);
}
