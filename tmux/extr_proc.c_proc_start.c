
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char const* sysname; long release; int version; } ;
struct tmuxproc {int name; } ;


 int PROTOCOL_VERSION ;
 int VERSION ;
 int event_get_method () ;
 int event_get_version () ;
 scalar_t__ getpid () ;
 int log_debug (char*,char const*,long,int ,int ,int ) ;
 int log_open (char const*) ;
 int memset (struct utsname*,int ,int) ;
 int setproctitle (char*,char const*,int ) ;
 int socket_path ;
 scalar_t__ uname (struct utsname*) ;
 struct tmuxproc* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct tmuxproc *
proc_start(const char *name)
{
 struct tmuxproc *tp;
 struct utsname u;

 log_open(name);
 setproctitle("%s (%s)", name, socket_path);

 if (uname(&u) < 0)
  memset(&u, 0, sizeof u);

 log_debug("%s started (%ld): version %s, socket %s, protocol %d", name,
     (long)getpid(), VERSION, socket_path, PROTOCOL_VERSION);
 log_debug("on %s %s %s; libevent %s (%s)", u.sysname, u.release,
     u.version, event_get_version(), event_get_method());

 tp = xcalloc(1, sizeof *tp);
 tp->name = xstrdup(name);

 return (tp);
}
