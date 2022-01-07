
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int orig_close (int) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int ts_close(int fd){
  if( tsIsFail() ){





    orig_close(fd);
    return -1;
  }
  return orig_close(fd);
}
