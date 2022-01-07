
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {int size; void* buffer; } ;
struct uncomplete {int read; int header; TYPE_1__ pack; struct uncomplete* next; } ;
struct queue {struct uncomplete** hash; } ;
typedef int lua_State ;


 int TYPE_DATA ;
 int TYPE_MORE ;
 int assert (int) ;
 struct uncomplete* find_uncomplete (struct queue*,int) ;
 int hash_fd (int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int lua_pushvalue (int *,int ) ;
 struct queue* lua_touserdata (int *,int) ;
 int lua_upvalueindex (int ) ;
 int memcpy (void*,void**,int) ;
 int push_data (int *,int,void**,int,int) ;
 int push_more (int *,int,void**,int) ;
 int read_size (void**) ;
 struct uncomplete* save_uncomplete (int *,int) ;
 int skynet_free (struct uncomplete*) ;
 void* skynet_malloc (int) ;

__attribute__((used)) static int
filter_data_(lua_State *L, int fd, uint8_t * buffer, int size) {
 struct queue *q = lua_touserdata(L,1);
 struct uncomplete * uc = find_uncomplete(q, fd);
 if (uc) {

  if (uc->read < 0) {

   assert(uc->read == -1);
   int pack_size = *buffer;
   pack_size |= uc->header << 8 ;
   ++buffer;
   --size;
   uc->pack.size = pack_size;
   uc->pack.buffer = skynet_malloc(pack_size);
   uc->read = 0;
  }
  int need = uc->pack.size - uc->read;
  if (size < need) {
   memcpy(uc->pack.buffer + uc->read, buffer, size);
   uc->read += size;
   int h = hash_fd(fd);
   uc->next = q->hash[h];
   q->hash[h] = uc;
   return 1;
  }
  memcpy(uc->pack.buffer + uc->read, buffer, need);
  buffer += need;
  size -= need;
  if (size == 0) {
   lua_pushvalue(L, lua_upvalueindex(TYPE_DATA));
   lua_pushinteger(L, fd);
   lua_pushlightuserdata(L, uc->pack.buffer);
   lua_pushinteger(L, uc->pack.size);
   skynet_free(uc);
   return 5;
  }

  push_data(L, fd, uc->pack.buffer, uc->pack.size, 0);
  skynet_free(uc);
  push_more(L, fd, buffer, size);
  lua_pushvalue(L, lua_upvalueindex(TYPE_MORE));
  return 2;
 } else {
  if (size == 1) {
   struct uncomplete * uc = save_uncomplete(L, fd);
   uc->read = -1;
   uc->header = *buffer;
   return 1;
  }
  int pack_size = read_size(buffer);
  buffer+=2;
  size-=2;

  if (size < pack_size) {
   struct uncomplete * uc = save_uncomplete(L, fd);
   uc->read = size;
   uc->pack.size = pack_size;
   uc->pack.buffer = skynet_malloc(pack_size);
   memcpy(uc->pack.buffer, buffer, size);
   return 1;
  }
  if (size == pack_size) {

   lua_pushvalue(L, lua_upvalueindex(TYPE_DATA));
   lua_pushinteger(L, fd);
   void * result = skynet_malloc(pack_size);
   memcpy(result, buffer, size);
   lua_pushlightuserdata(L, result);
   lua_pushinteger(L, size);
   return 5;
  }

  push_data(L, fd, buffer, pack_size, 1);
  buffer += pack_size;
  size -= pack_size;
  push_more(L, fd, buffer, size);
  lua_pushvalue(L, lua_upvalueindex(TYPE_MORE));
  return 2;
 }
}
