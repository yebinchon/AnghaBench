
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
struct TYPE_9__ {int x_socket; scalar_t__ seamless_active; } ;
struct TYPE_10__ {int dsp_fd; scalar_t__ dsp_busy; TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ False ;
 scalar_t__ True ;
 int errno ;
 int error (char*,int ) ;
 int rdpdr_add_fds (TYPE_2__*,int*,int *,int *,struct timeval*,scalar_t__*) ;
 int rdpdr_check_fds (TYPE_2__*,int *,int *,scalar_t__) ;
 int seamless_select_timeout (TYPE_2__*,struct timeval*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int strerror (int ) ;
 int sw_check_timers (TYPE_2__*) ;
 int wave_out_play () ;
 int xwin_process_events (TYPE_2__*) ;

int
ui_select(RDPCLIENT * This, int rdp_socket)
{
 int n;
 fd_set rfds, wfds;
 struct timeval tv;
 BOOL s_timeout = False;

 while (True)
 {
  n = (rdp_socket > This->xwin.x_socket) ? rdp_socket : This->xwin.x_socket;

  if (!xwin_process_events(This))

   return 0;

  if (This->xwin.seamless_active)
   sw_check_timers(This);

  FD_ZERO(&rfds);
  FD_ZERO(&wfds);
  FD_SET(rdp_socket, &rfds);
  FD_SET(This->xwin.x_socket, &rfds);
  tv.tv_sec = 60;
  tv.tv_usec = 0;


  rdpdr_add_fds(This, &n, &rfds, &wfds, &tv, &s_timeout);
  seamless_select_timeout(This, &tv);

  n++;

  switch (select(n, &rfds, &wfds, ((void*)0), &tv))
  {
   case -1:
    error("select: %s\n", strerror(errno));

   case 0:

    if (s_timeout)
     rdpdr_check_fds(This, &rfds, &wfds, (BOOL) True);
    continue;
  }

  rdpdr_check_fds(This, &rfds, &wfds, (BOOL) False);

  if (FD_ISSET(rdp_socket, &rfds))
   return 1;





 }
}
