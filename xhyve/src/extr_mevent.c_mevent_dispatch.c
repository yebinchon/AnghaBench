
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int dummy; } ;
struct kevent {int dummy; } ;


 scalar_t__ EINTR ;
 int EVF_READ ;
 int MEVENT_MAX ;
 int assert (int) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 int kqueue () ;
 struct mevent* mevent_add (int ,int ,int ,int *) ;
 int mevent_build (int,struct kevent*) ;
 int mevent_handle (struct kevent*,int) ;
 int mevent_pipe_read ;
 int * mevent_pipefd ;
 int mevent_set_name () ;
 int mevent_tid ;
 int perror (char*) ;
 int pipe (int *) ;
 int pthread_self () ;

__attribute__ ((noreturn)) void
mevent_dispatch(void)
{
 struct kevent changelist[MEVENT_MAX];
 struct kevent eventlist[MEVENT_MAX];
 struct mevent *pipev;
 int mfd;
 int numev;
 int ret;

 mevent_tid = pthread_self();
 mevent_set_name();

 mfd = kqueue();
 assert(mfd > 0);






 ret = pipe(mevent_pipefd);
 if (ret < 0) {
  perror("pipe");
  exit(0);
 }




 pipev = mevent_add(mevent_pipefd[0], EVF_READ, mevent_pipe_read, ((void*)0));
 assert(pipev != ((void*)0));

 for (;;) {






  numev = mevent_build(mfd, changelist);
  if (numev) {
   ret = kevent(mfd, changelist, numev, ((void*)0), 0, ((void*)0));
   if (ret == -1) {
    perror("Error return from kevent change");
   }
  }




  ret = kevent(mfd, ((void*)0), 0, eventlist, MEVENT_MAX, ((void*)0));
  if (ret == -1 && errno != EINTR) {
   perror("Error return from kevent monitor");
  }




  mevent_handle(eventlist, ret);
 }
}
