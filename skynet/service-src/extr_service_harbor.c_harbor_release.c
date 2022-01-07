
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {scalar_t__ status; scalar_t__ fd; } ;
struct harbor {int map; struct slave* s; } ;


 int REMOTE_MAX ;
 scalar_t__ STATUS_DOWN ;
 int close_harbor (struct harbor*,int) ;
 int hash_delete (int ) ;
 int skynet_free (struct harbor*) ;

void
harbor_release(struct harbor *h) {
 int i;
 for (i=1;i<REMOTE_MAX;i++) {
  struct slave *s = &h->s[i];
  if (s->fd && s->status != STATUS_DOWN) {
   close_harbor(h,i);


  }
 }
 hash_delete(h->map);
 skynet_free(h);
}
