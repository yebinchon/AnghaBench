
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {size_t head; size_t tail; size_t cap; struct netpack* queue; } ;
struct netpack {int size; int buffer; int id; } ;
typedef int lua_State ;


 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 struct queue* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lpop(lua_State *L) {
 struct queue * q = lua_touserdata(L, 1);
 if (q == ((void*)0) || q->head == q->tail)
  return 0;
 struct netpack *np = &q->queue[q->head];
 if (++q->head >= q->cap) {
  q->head = 0;
 }
 lua_pushinteger(L, np->id);
 lua_pushlightuserdata(L, np->buffer);
 lua_pushinteger(L, np->size);

 return 3;
}
