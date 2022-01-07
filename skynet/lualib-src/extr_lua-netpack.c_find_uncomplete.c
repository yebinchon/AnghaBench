
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct uncomplete {struct uncomplete* next; TYPE_1__ pack; } ;
struct queue {struct uncomplete** hash; } ;


 int hash_fd (int) ;

__attribute__((used)) static struct uncomplete *
find_uncomplete(struct queue *q, int fd) {
 if (q == ((void*)0))
  return ((void*)0);
 int h = hash_fd(fd);
 struct uncomplete * uc = q->hash[h];
 if (uc == ((void*)0))
  return ((void*)0);
 if (uc->pack.id == fd) {
  q->hash[h] = uc->next;
  return uc;
 }
 struct uncomplete * last = uc;
 while (last->next) {
  uc = last->next;
  if (uc->pack.id == fd) {
   last->next = uc->next;
   return uc;
  }
  last = uc;
 }
 return ((void*)0);
}
