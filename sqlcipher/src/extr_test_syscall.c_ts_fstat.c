
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int orig_fstat (int,struct stat*) ;
 scalar_t__ tsIsFailErrno (char*) ;

__attribute__((used)) static int ts_fstat(int fd, struct stat *p){
  if( tsIsFailErrno("fstat") ){
    return -1;
  }
  return orig_fstat(fd, p);
}
