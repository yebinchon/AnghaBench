
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int fd; } ;
struct harbor {struct slave* s; } ;


 int REMOTE_MAX ;

__attribute__((used)) static int
harbor_id(struct harbor *h, int fd) {
 int i;
 for (i=1;i<REMOTE_MAX;i++) {
  struct slave *s = &h->s[i];
  if (s->fd == fd) {
   return i;
  }
 }
 return 0;
}
