
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int orig_pwrite (int,void const*,size_t,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_pwrite(int fd, const void *aBuf, size_t nBuf, off_t off){
  if( tsIsFailErrno("pwrite") ){
    return -1;
  }
  return orig_pwrite(fd, aBuf, nBuf, off);
}
