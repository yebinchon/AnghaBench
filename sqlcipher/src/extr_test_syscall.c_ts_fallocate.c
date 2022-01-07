
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int orig_fallocate (int,int ,int ) ;
 int tsErrno (char*) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int ts_fallocate(int fd, off_t off, off_t len){
  if( tsIsFail() ){
    return tsErrno("fallocate");
  }
  return orig_fallocate(fd, off, len);
}
