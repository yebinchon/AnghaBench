
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int orig_ftruncate (int,int ) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_ftruncate(int fd, off_t n){
  if( tsIsFailErrno("ftruncate") ){
    return -1;
  }
  return orig_ftruncate(fd, n);
}
