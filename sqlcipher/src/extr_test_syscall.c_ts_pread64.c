
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;


 int orig_pread64 (int,void*,size_t,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_pread64(int fd, void *aBuf, size_t nBuf, sqlite3_uint64 off){
  if( tsIsFailErrno("pread64") ){
    return -1;
  }
  return orig_pread64(fd, aBuf, nBuf, off);
}
