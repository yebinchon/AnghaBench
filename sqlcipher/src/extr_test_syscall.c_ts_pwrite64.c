
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;


 int orig_pwrite64 (int,void const*,size_t,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_pwrite64(int fd, const void *aBuf, size_t nBuf, sqlite3_uint64 off){
  if( tsIsFailErrno("pwrite64") ){
    return -1;
  }
  return orig_pwrite64(fd, aBuf, nBuf, off);
}
