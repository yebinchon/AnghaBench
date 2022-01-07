
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int orig_fchmod (int,int ) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int ts_fchmod(int fd, mode_t mode){
  if( tsIsFail() ){
    return -1;
  }
  return orig_fchmod(fd, mode);
}
