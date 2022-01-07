
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_event ;
struct TYPE_4__ {int events; int fd; } ;
struct TYPE_3__ {TYPE_2__ pollfd; int event; } ;
typedef TYPE_1__ SDEventSource ;
typedef int GSource ;


 int G_IO_ERR ;
 int G_IO_HUP ;
 int G_IO_IN ;
 int event_funcs ;
 int g_source_add_poll (int *,TYPE_2__*) ;
 scalar_t__ g_source_new (int *,int) ;
 int sd_event_get_fd (int *) ;
 int sd_event_ref (int *) ;

GSource *g_sd_event_create_source(sd_event *event) {
  SDEventSource *source;

  source = (SDEventSource *)g_source_new(&event_funcs, sizeof(SDEventSource));

  source->event = sd_event_ref(event);
  source->pollfd.fd = sd_event_get_fd(event);
  source->pollfd.events = G_IO_IN | G_IO_HUP | G_IO_ERR;

  g_source_add_poll((GSource *)source, &source->pollfd);

  return (GSource *)source;
}
