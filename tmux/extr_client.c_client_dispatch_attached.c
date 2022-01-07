
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;
struct TYPE_2__ {size_t len; int type; } ;
struct imsg {char* data; TYPE_1__ hdr; } ;
typedef size_t ssize_t ;


 int CLIENT_EXIT_DETACHED ;
 int CLIENT_EXIT_DETACHED_HUP ;
 int CLIENT_EXIT_EXITED ;
 int CLIENT_EXIT_SERVER_EXITED ;
 size_t IMSG_HEADER_SIZE ;





 int MSG_EXITING ;



 int MSG_UNLOCK ;
 int SA_RESTART ;
 int SIGTSTP ;
 int SIG_DFL ;
 void* client_execcmd ;
 void* client_execshell ;
 int client_exitreason ;
 void* client_exitsession ;
 int client_exittype ;
 int client_exitval ;
 int client_peer ;
 int client_proc ;
 int fatal (char*) ;
 int fatalx (char*) ;
 int getpid () ;
 int kill (int ,int ) ;
 int memset (struct sigaction*,int ,int) ;
 int proc_exit (int ) ;
 int proc_send (int ,int ,int,int *,int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int strlen (char*) ;
 int system (char*) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void
client_dispatch_attached(struct imsg *imsg)
{
 struct sigaction sigact;
 char *data;
 ssize_t datalen;

 data = imsg->data;
 datalen = imsg->hdr.len - IMSG_HEADER_SIZE;

 switch (imsg->hdr.type) {
 case 135:
 case 134:
  if (datalen == 0 || data[datalen - 1] != '\0')
   fatalx("bad MSG_DETACH string");

  client_exitsession = xstrdup(data);
  client_exittype = imsg->hdr.type;
  if (imsg->hdr.type == 134)
   client_exitreason = CLIENT_EXIT_DETACHED_HUP;
  else
   client_exitreason = CLIENT_EXIT_DETACHED;
  proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
  break;
 case 133:
  if (datalen == 0 || data[datalen - 1] != '\0' ||
      strlen(data) + 1 == (size_t)datalen)
   fatalx("bad MSG_EXEC string");
  client_execcmd = xstrdup(data);
  client_execshell = xstrdup(data + strlen(data) + 1);

  client_exittype = imsg->hdr.type;
  proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
  break;
 case 132:
  if (datalen != 0 && datalen != sizeof (int))
   fatalx("bad MSG_EXIT size");

  proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
  client_exitreason = CLIENT_EXIT_EXITED;
  break;
 case 131:
  if (datalen != 0)
   fatalx("bad MSG_EXITED size");

  proc_exit(client_proc);
  break;
 case 129:
  if (datalen != 0)
   fatalx("bad MSG_SHUTDOWN size");

  proc_send(client_peer, MSG_EXITING, -1, ((void*)0), 0);
  client_exitreason = CLIENT_EXIT_SERVER_EXITED;
  client_exitval = 1;
  break;
 case 128:
  if (datalen != 0)
   fatalx("bad MSG_SUSPEND size");

  memset(&sigact, 0, sizeof sigact);
  sigemptyset(&sigact.sa_mask);
  sigact.sa_flags = SA_RESTART;
  sigact.sa_handler = SIG_DFL;
  if (sigaction(SIGTSTP, &sigact, ((void*)0)) != 0)
   fatal("sigaction failed");
  kill(getpid(), SIGTSTP);
  break;
 case 130:
  if (datalen == 0 || data[datalen - 1] != '\0')
   fatalx("bad MSG_LOCK string");

  system(data);
  proc_send(client_peer, MSG_UNLOCK, -1, ((void*)0), 0);
  break;
 }
}
