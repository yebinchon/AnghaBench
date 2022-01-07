
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int sx; int sy; } ;
struct client {int references; int fd; int click_timer; int repeat_timer; TYPE_2__* keytable; int flags; scalar_t__ prompt_index; int * prompt_buffer; int * prompt_string; int message_log; int * message_string; TYPE_1__ tty; int * last_session; int * session; int * title; int * stderr_data; int * stdout_data; int * stdin_data; int queue; int * cwd; int environ; int creation_time; int activity_time; int peer; } ;
struct TYPE_4__ {int references; } ;


 int CLIENT_FOCUSED ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct client*,int ) ;
 int clients ;
 int entry ;
 int environ_create () ;
 void* evbuffer_new () ;
 int evtimer_set (int *,int ,struct client*) ;
 int fatal (char*) ;
 int fatalx (char*) ;
 scalar_t__ gettimeofday (int *,int *) ;
 TYPE_2__* key_bindings_get_table (char*,int) ;
 int log_debug (char*,struct client*) ;
 int memcpy (int *,int *,int) ;
 int proc_add_peer (int ,int,int ,struct client*) ;
 int server_client_click_timer ;
 int server_client_dispatch ;
 int server_client_repeat_timer ;
 int server_proc ;
 int setblocking (int,int ) ;
 int status_init (struct client*) ;
 struct client* xcalloc (int,int) ;

struct client *
server_client_create(int fd)
{
 struct client *c;

 setblocking(fd, 0);

 c = xcalloc(1, sizeof *c);
 c->references = 1;
 c->peer = proc_add_peer(server_proc, fd, server_client_dispatch, c);

 if (gettimeofday(&c->creation_time, ((void*)0)) != 0)
  fatal("gettimeofday failed");
 memcpy(&c->activity_time, &c->creation_time, sizeof c->activity_time);

 c->environ = environ_create();

 c->fd = -1;
 c->cwd = ((void*)0);

 TAILQ_INIT(&c->queue);

 c->stdin_data = evbuffer_new();
 if (c->stdin_data == ((void*)0))
  fatalx("out of memory");
 c->stdout_data = evbuffer_new();
 if (c->stdout_data == ((void*)0))
  fatalx("out of memory");
 c->stderr_data = evbuffer_new();
 if (c->stderr_data == ((void*)0))
  fatalx("out of memory");

 c->tty.fd = -1;
 c->title = ((void*)0);

 c->session = ((void*)0);
 c->last_session = ((void*)0);

 c->tty.sx = 80;
 c->tty.sy = 24;

 status_init(c);

 c->message_string = ((void*)0);
 TAILQ_INIT(&c->message_log);

 c->prompt_string = ((void*)0);
 c->prompt_buffer = ((void*)0);
 c->prompt_index = 0;

 c->flags |= CLIENT_FOCUSED;

 c->keytable = key_bindings_get_table("root", 1);
 c->keytable->references++;

 evtimer_set(&c->repeat_timer, server_client_repeat_timer, c);
 evtimer_set(&c->click_timer, server_client_click_timer, c);

 TAILQ_INSERT_TAIL(&clients, c, entry);
 log_debug("new client %p", c);
 return (c);
}
