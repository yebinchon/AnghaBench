
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char pid_t ;


 size_t IMSG_HEADER_SIZE ;
 size_t MAX_IMSGSIZE ;
 int MSG_IDENTIFY_CLIENTPID ;
 int MSG_IDENTIFY_CWD ;
 int MSG_IDENTIFY_DONE ;
 int MSG_IDENTIFY_ENVIRON ;
 int MSG_IDENTIFY_FLAGS ;
 int MSG_IDENTIFY_STDIN ;
 int MSG_IDENTIFY_TERM ;
 int MSG_IDENTIFY_TTYNAME ;
 int STDIN_FILENO ;
 int client_flags ;
 int client_peer ;
 int dup (int ) ;
 char** environ ;
 int fatal (char*) ;
 char* getenv (char*) ;
 char getpid () ;
 int proc_send (int ,int ,int,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void
client_send_identify(const char *ttynam, const char *cwd)
{
 const char *s;
 char **ss;
 size_t sslen;
 int fd, flags = client_flags;
 pid_t pid;

 proc_send(client_peer, MSG_IDENTIFY_FLAGS, -1, &flags, sizeof flags);

 if ((s = getenv("TERM")) == ((void*)0))
  s = "";
 proc_send(client_peer, MSG_IDENTIFY_TERM, -1, s, strlen(s) + 1);

 proc_send(client_peer, MSG_IDENTIFY_TTYNAME, -1, ttynam,
     strlen(ttynam) + 1);
 proc_send(client_peer, MSG_IDENTIFY_CWD, -1, cwd, strlen(cwd) + 1);

 if ((fd = dup(STDIN_FILENO)) == -1)
  fatal("dup failed");
 proc_send(client_peer, MSG_IDENTIFY_STDIN, fd, ((void*)0), 0);

 pid = getpid();
 proc_send(client_peer, MSG_IDENTIFY_CLIENTPID, -1, &pid, sizeof pid);

 for (ss = environ; *ss != ((void*)0); ss++) {
  sslen = strlen(*ss) + 1;
  if (sslen > MAX_IMSGSIZE - IMSG_HEADER_SIZE)
   continue;
  proc_send(client_peer, MSG_IDENTIFY_ENVIRON, -1, *ss, sslen);
 }

 proc_send(client_peer, MSG_IDENTIFY_DONE, -1, ((void*)0), 0);
}
