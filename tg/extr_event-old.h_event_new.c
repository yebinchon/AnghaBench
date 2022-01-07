
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int event_base_set (struct event_base*,struct event*) ;
 int event_set (struct event*,int,int,void (*) (int,short,void*),void*) ;
 struct event* malloc (int) ;

__attribute__((used)) static inline struct event *event_new (struct event_base *base, int fd, int what, void(*callback)(int, short, void *), void *arg) {
  struct event *ev = malloc (sizeof (*ev));
  event_set (ev, fd, what, callback, arg);
  event_base_set (base, ev);
  return ev;
}
