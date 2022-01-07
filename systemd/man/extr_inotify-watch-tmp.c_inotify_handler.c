
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_event {int mask; char* name; } ;
typedef int sd_event_source ;


 int IN_CREATE ;
 int IN_DELETE ;
 int IN_MOVED_TO ;
 int IN_Q_OVERFLOW ;
 int printf (char*,char const*,...) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_description (int *,char const**) ;
 int sd_event_source_get_event (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int inotify_handler(sd_event_source *source,
                           const struct inotify_event *event,
                           void *userdata) {

  const char *desc = ((void*)0);

  sd_event_source_get_description(source, &desc);

  if (event->mask & IN_Q_OVERFLOW)
    printf("inotify-handler <%s>: overflow\n", desc);
  else if (event->mask & IN_CREATE)
    printf("inotify-handler <%s>: create on %s\n", desc, event->name);
  else if (event->mask & IN_DELETE)
    printf("inotify-handler <%s>: delete on %s\n", desc, event->name);
  else if (event->mask & IN_MOVED_TO)
    printf("inotify-handler <%s>: moved-to on %s\n", desc, event->name);


  if ((event->mask & (IN_CREATE|IN_MOVED_TO)) &&
      strcmp(event->name, "exit") == 0)
    sd_event_exit(sd_event_source_get_event(source), 0);

  return 1;
}
