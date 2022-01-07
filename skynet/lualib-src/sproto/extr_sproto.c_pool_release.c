
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {struct chunk* header; } ;
struct chunk {struct chunk* next; } ;


 int free (struct chunk*) ;

__attribute__((used)) static void
pool_release(struct pool *p) {
 struct chunk * tmp = p->header;
 while (tmp) {
  struct chunk * n = tmp->next;
  free(tmp);
  tmp = n;
 }
}
