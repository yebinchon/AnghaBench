
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* MAP_FAILED ;
 void* orig_mmap (void*,size_t,int,int,int,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static void *ts_mmap(
  void *pAddr,
  size_t nByte,
  int prot,
  int flags,
  int fd,
  off_t iOff
){
  if( tsIsFailErrno("mmap") ){
    return MAP_FAILED;
  }
  return orig_mmap(pAddr, nByte, prot, flags, fd, iOff);
}
