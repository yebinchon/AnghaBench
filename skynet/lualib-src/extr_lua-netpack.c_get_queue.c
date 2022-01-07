
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int ** hash; scalar_t__ tail; scalar_t__ head; int cap; } ;
typedef int lua_State ;


 int HASHSIZE ;
 int QUEUESIZE ;
 struct queue* lua_newuserdata (int *,int) ;
 int lua_replace (int *,int) ;
 struct queue* lua_touserdata (int *,int) ;

__attribute__((used)) static struct queue *
get_queue(lua_State *L) {
 struct queue *q = lua_touserdata(L,1);
 if (q == ((void*)0)) {
  q = lua_newuserdata(L, sizeof(struct queue));
  q->cap = QUEUESIZE;
  q->head = 0;
  q->tail = 0;
  int i;
  for (i=0;i<HASHSIZE;i++) {
   q->hash[i] = ((void*)0);
  }
  lua_replace(L, 1);
 }
 return q;
}
