
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int head; int tail; int cap; struct netpack* queue; int ** hash; } ;
struct netpack {int buffer; } ;
typedef int lua_State ;


 int HASHSIZE ;
 int clear_list (int *) ;
 struct queue* lua_touserdata (int *,int) ;
 int skynet_free (int ) ;

__attribute__((used)) static int
lclear(lua_State *L) {
 struct queue * q = lua_touserdata(L, 1);
 if (q == ((void*)0)) {
  return 0;
 }
 int i;
 for (i=0;i<HASHSIZE;i++) {
  clear_list(q->hash[i]);
  q->hash[i] = ((void*)0);
 }
 if (q->head > q->tail) {
  q->tail += q->cap;
 }
 for (i=q->head;i<q->tail;i++) {
  struct netpack *np = &q->queue[i % q->cap];
  skynet_free(np->buffer);
 }
 q->head = q->tail = 0;

 return 0;
}
