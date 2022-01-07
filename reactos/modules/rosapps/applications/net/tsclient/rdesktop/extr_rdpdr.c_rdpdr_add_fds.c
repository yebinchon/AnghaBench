
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct timeval {int tv_sec; int tv_usec; } ;
struct async_iorequest {scalar_t__ fd; int major; int timeout; int itv_timeout; struct async_iorequest* next; int partial_len; } ;
typedef int fd_set ;
struct TYPE_3__ {scalar_t__ min_timeout_fd; struct async_iorequest* iorequest; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int EBADF ;
 int FD_SET (scalar_t__,int *) ;



 int MAX (int,scalar_t__) ;
 int True ;
 int errno ;
 int write (scalar_t__,char*,int ) ;

void
rdpdr_add_fds(RDPCLIENT * This, int *n, fd_set * rfds, fd_set * wfds, struct timeval *tv, BOOL * timeout)
{
 uint32 select_timeout = 0;
 struct async_iorequest *iorq;
 char c;

 iorq = This->iorequest;
 while (iorq != ((void*)0))
 {
  if (iorq->fd != 0)
  {
   switch (iorq->major)
   {
    case 129:





     FD_SET(iorq->fd, rfds);
     *n = MAX(*n, iorq->fd);


     if (iorq->timeout
         && (select_timeout == 0
      || iorq->timeout < select_timeout))
     {

      select_timeout = iorq->timeout;
      This->min_timeout_fd = iorq->fd;
      tv->tv_sec = select_timeout / 1000;
      tv->tv_usec = (select_timeout % 1000) * 1000;
      *timeout = True;
      break;
     }
     if (iorq->itv_timeout && iorq->partial_len > 0
         && (select_timeout == 0
      || iorq->itv_timeout < select_timeout))
     {

      select_timeout = iorq->itv_timeout;
      This->min_timeout_fd = iorq->fd;
      tv->tv_sec = select_timeout / 1000;
      tv->tv_usec = (select_timeout % 1000) * 1000;
      *timeout = True;
      break;
     }
     break;

    case 128:

     if ((write(iorq->fd, &c, 0) != 0) && (errno == EBADF))
      break;

     FD_SET(iorq->fd, wfds);
     *n = MAX(*n, iorq->fd);
     break;

    case 130:
     if (select_timeout > 5)
      select_timeout = 5;
     break;

   }

  }

  iorq = iorq->next;
 }
}
