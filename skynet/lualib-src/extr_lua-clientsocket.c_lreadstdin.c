
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {size_t head; size_t tail; char** queue; int lock; } ;
typedef int lua_State ;


 size_t QUEUE_SIZE ;
 int free (char*) ;
 int lua_pushstring (int *,char*) ;
 struct queue* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
lreadstdin(lua_State *L) {
 struct queue *q = lua_touserdata(L, lua_upvalueindex(1));
 pthread_mutex_lock(&q->lock);
 if (q->head == q->tail) {
  pthread_mutex_unlock(&q->lock);
  return 0;
 }
 char * str = q->queue[q->head];
 if (++q->head >= QUEUE_SIZE) {
  q->head = 0;
 }
 pthread_mutex_unlock(&q->lock);
 lua_pushstring(L, str);
 free(str);
 return 1;
}
