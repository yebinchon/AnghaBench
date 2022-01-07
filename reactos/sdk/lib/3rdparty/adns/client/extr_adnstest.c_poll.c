
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;


 int fputs (char*,int ) ;
 int quitnow (int) ;
 int stderr ;

int poll(struct pollfd *ufds, int nfds, int timeout) {
  fputs("poll(2) not supported on this system\n",stderr);
  quitnow(5);
  return -1;
}
