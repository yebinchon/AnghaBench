
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;


 int EV_READ ;
 int EV_TIMEOUT ;
 int event_add (int *,struct timeval*) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 int event_set (int *,int,int ,int ,int *) ;
 int server_accept ;
 int server_ev_accept ;
 int server_fd ;

void
server_add_accept(int timeout)
{
 struct timeval tv = { timeout, 0 };

 if (server_fd == -1)
  return;

 if (event_initialized(&server_ev_accept))
  event_del(&server_ev_accept);

 if (timeout == 0) {
  event_set(&server_ev_accept, server_fd, EV_READ, server_accept,
      ((void*)0));
  event_add(&server_ev_accept, ((void*)0));
 } else {
  event_set(&server_ev_accept, server_fd, EV_TIMEOUT,
      server_accept, ((void*)0));
  event_add(&server_ev_accept, &tv);
 }
}
