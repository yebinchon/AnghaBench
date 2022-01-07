
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int orig_pread (int,void*,size_t,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_pread(int fd, void *aBuf, size_t nBuf, off_t off){
  if( tsIsFailErrno("pread") ){
    return -1;
  }
  return orig_pread(fd, aBuf, nBuf, off);
}
