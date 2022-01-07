
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int event_del (struct event*) ;
 int free (struct event*) ;

__attribute__((used)) static void event_free (struct event *ev) {
  event_del (ev);
  free (ev);
}
