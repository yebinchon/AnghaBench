
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_server {struct socket* slot; } ;
struct socket_info {int next; } ;
struct socket {int id; } ;


 int MAX_SOCKET ;
 scalar_t__ query_info (struct socket*,struct socket_info*) ;
 struct socket_info* socket_info_create (struct socket_info*) ;

struct socket_info *
socket_server_info(struct socket_server *ss) {
 int i;
 struct socket_info * si = ((void*)0);
 for (i=0;i<MAX_SOCKET;i++) {
  struct socket * s = &ss->slot[i];
  int id = s->id;
  struct socket_info temp;
  if (query_info(s, &temp) && s->id == id) {

   si = socket_info_create(si);
   temp.next = si->next;
   *si = temp;
  }
 }
 return si;
}
