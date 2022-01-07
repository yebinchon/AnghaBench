
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {void* ev_arg; } ;



__attribute__((used)) static inline void *event_get_callback_arg(const struct event *ev) {
  return ev->ev_arg;
}
