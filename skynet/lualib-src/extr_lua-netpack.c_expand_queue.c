
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int cap; int head; int tail; int * queue; int hash; } ;
struct netpack {int dummy; } ;
typedef int lua_State ;


 int QUEUESIZE ;
 struct queue* lua_newuserdata (int *,int) ;
 int lua_replace (int *,int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
expand_queue(lua_State *L, struct queue *q) {
 struct queue *nq = lua_newuserdata(L, sizeof(struct queue) + q->cap * sizeof(struct netpack));
 nq->cap = q->cap + QUEUESIZE;
 nq->head = 0;
 nq->tail = q->cap;
 memcpy(nq->hash, q->hash, sizeof(nq->hash));
 memset(q->hash, 0, sizeof(q->hash));
 int i;
 for (i=0;i<q->cap;i++) {
  int idx = (q->head + i) % q->cap;
  nq->queue[i] = q->queue[idx];
 }
 q->head = q->tail = 0;
 lua_replace(L,1);
}
