
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numfds; int fds; } ;
typedef TYPE_1__* SelectSetPtr ;


 int FD_CLR (int const,int *) ;
 scalar_t__ FD_ISSET (int const,int *) ;

void
SelectSetRemove(SelectSetPtr const ssp, const int fd)
{
 if ((fd >= 0) && (FD_ISSET(fd, &ssp->fds))) {
  FD_CLR(fd, &ssp->fds);



  --ssp->numfds;
 }
}
