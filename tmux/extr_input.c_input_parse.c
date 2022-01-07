
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {TYPE_1__* event; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {struct evbuffer* input; } ;


 int EVBUFFER_DATA (struct evbuffer*) ;
 int EVBUFFER_LENGTH (struct evbuffer*) ;
 int evbuffer_drain (struct evbuffer*,int ) ;
 int input_parse_buffer (struct window_pane*,int ,int ) ;

void
input_parse(struct window_pane *wp)
{
 struct evbuffer *evb = wp->event->input;

 input_parse_buffer(wp, EVBUFFER_DATA(evb), EVBUFFER_LENGTH(evb));
 evbuffer_drain(evb, EVBUFFER_LENGTH(evb));
}
