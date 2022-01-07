
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct uncomplete* buffer; } ;
struct uncomplete {TYPE_1__ pack; } ;
struct queue {int dummy; } ;
typedef int lua_State ;


 struct uncomplete* find_uncomplete (struct queue*,int) ;
 struct queue* lua_touserdata (int *,int) ;
 int skynet_free (struct uncomplete*) ;

__attribute__((used)) static void
close_uncomplete(lua_State *L, int fd) {
 struct queue *q = lua_touserdata(L,1);
 struct uncomplete * uc = find_uncomplete(q, fd);
 if (uc) {
  skynet_free(uc->pack.buffer);
  skynet_free(uc);
 }
}
