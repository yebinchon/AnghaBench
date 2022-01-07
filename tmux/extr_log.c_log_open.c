
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IOLBF ;
 int event_set_log_callback (int ) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getpid () ;
 int log_close () ;
 int log_event_cb ;
 int * log_file ;
 scalar_t__ log_level ;
 int setvbuf (int *,int *,int ,int ) ;
 int xasprintf (char**,char*,char const*,long) ;

void
log_open(const char *name)
{
 char *path;

 if (log_level == 0)
  return;
 log_close();

 xasprintf(&path, "tmux-%s-%ld.log", name, (long)getpid());
 log_file = fopen(path, "a");
 free(path);
 if (log_file == ((void*)0))
  return;

 setvbuf(log_file, ((void*)0), _IOLBF, 0);
 event_set_log_callback(log_event_cb);
}
