
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep (int) ;

__attribute__((used)) static int busyhandler(void *pArg, int n){
  usleep(10*1000);
  return 1;
}
