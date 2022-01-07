
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;


 int assert (int) ;
 int bufferevent_base_set (struct event_base*,struct bufferevent*) ;
 struct bufferevent* bufferevent_new (int,int ,int ,int ,int ) ;

__attribute__((used)) static struct bufferevent *bufferevent_socket_new (struct event_base *base, int fd, int flags) {
  assert (!flags);
  struct bufferevent *bev = bufferevent_new(fd, 0, 0, 0, 0);
  bufferevent_base_set (base, bev);
  return bev;
}
