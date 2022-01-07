
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct uncomplete {TYPE_1__ pack; struct uncomplete* next; } ;
struct queue {struct uncomplete** hash; } ;
typedef int lua_State ;


 struct queue* get_queue (int *) ;
 int hash_fd (int) ;
 int memset (struct uncomplete*,int ,int) ;
 struct uncomplete* skynet_malloc (int) ;

__attribute__((used)) static struct uncomplete *
save_uncomplete(lua_State *L, int fd) {
 struct queue *q = get_queue(L);
 int h = hash_fd(fd);
 struct uncomplete * uc = skynet_malloc(sizeof(struct uncomplete));
 memset(uc, 0, sizeof(*uc));
 uc->next = q->hash[h];
 uc->pack.id = fd;
 q->hash[h] = uc;

 return uc;
}
