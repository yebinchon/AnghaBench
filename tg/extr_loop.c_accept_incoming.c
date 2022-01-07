
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in_ev {int refcnt; int fd; scalar_t__ error; scalar_t__ in_buf_pos; struct bufferevent* bev; } ;
struct bufferevent {int dummy; } ;
typedef int socklen_t ;
typedef int evutil_socket_t ;
struct TYPE_2__ {int ev_base; } ;


 int EV_READ ;
 int EV_WRITE ;
 int E_WARNING ;
 TYPE_1__* TLS ;
 int accept (int ,struct sockaddr*,int *) ;
 int assert (int) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,struct in_ev*) ;
 struct bufferevent* bufferevent_socket_new (int ,int,int ) ;
 int event_incoming ;
 struct in_ev* malloc (int) ;
 int read_incoming ;
 int vlogprintf (int ,char*) ;

__attribute__((used)) static void accept_incoming (evutil_socket_t efd, short what, void *arg) {
  vlogprintf (E_WARNING, "Accepting incoming connection\n");
  socklen_t clilen = 0;
  struct sockaddr_in cli_addr;
  int fd = accept (efd, (struct sockaddr *)&cli_addr, &clilen);

  assert (fd >= 0);
  struct bufferevent *bev = bufferevent_socket_new (TLS->ev_base, fd, 0);
  struct in_ev *e = malloc (sizeof (*e));
  e->bev = bev;
  e->refcnt = 1;
  e->in_buf_pos = 0;
  e->error = 0;
  e->fd = fd;
  bufferevent_setcb (bev, read_incoming, 0, event_incoming, e);
  bufferevent_enable (bev, EV_READ | EV_WRITE);
}
