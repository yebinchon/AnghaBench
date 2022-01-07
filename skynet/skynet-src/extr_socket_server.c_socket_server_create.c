
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket_server {int recvctrl_fd; int sendctrl_fd; int checkctrl; int rfds; int soi; scalar_t__ event_index; scalar_t__ event_n; scalar_t__ alloc_id; struct socket* slot; int event_fd; int time; } ;
struct socket {int dw_lock; int low; int high; int type; } ;
typedef int poll_fd ;


 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 struct socket_server* MALLOC (int) ;
 int MAX_SOCKET ;
 int SOCKET_TYPE_INVALID ;
 int assert (int) ;
 int clear_wb_list (int *) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int memset (int *,int ,int) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ sp_add (int ,int,int *) ;
 int sp_create () ;
 scalar_t__ sp_invalid (int ) ;
 int sp_release (int ) ;
 int spinlock_init (int *) ;
 int stderr ;

struct socket_server *
socket_server_create(uint64_t time) {
 int i;
 int fd[2];
 poll_fd efd = sp_create();
 if (sp_invalid(efd)) {
  fprintf(stderr, "socket-server: create event pool failed.\n");
  return ((void*)0);
 }
 if (pipe(fd)) {
  sp_release(efd);
  fprintf(stderr, "socket-server: create socket pair failed.\n");
  return ((void*)0);
 }
 if (sp_add(efd, fd[0], ((void*)0))) {

  fprintf(stderr, "socket-server: can't add server fd to event pool.\n");
  close(fd[0]);
  close(fd[1]);
  sp_release(efd);
  return ((void*)0);
 }

 struct socket_server *ss = MALLOC(sizeof(*ss));
 ss->time = time;
 ss->event_fd = efd;
 ss->recvctrl_fd = fd[0];
 ss->sendctrl_fd = fd[1];
 ss->checkctrl = 1;

 for (i=0;i<MAX_SOCKET;i++) {
  struct socket *s = &ss->slot[i];
  s->type = SOCKET_TYPE_INVALID;
  clear_wb_list(&s->high);
  clear_wb_list(&s->low);
  spinlock_init(&s->dw_lock);
 }
 ss->alloc_id = 0;
 ss->event_n = 0;
 ss->event_index = 0;
 memset(&ss->soi, 0, sizeof(ss->soi));
 FD_ZERO(&ss->rfds);
 assert(ss->recvctrl_fd < FD_SETSIZE);

 return ss;
}
