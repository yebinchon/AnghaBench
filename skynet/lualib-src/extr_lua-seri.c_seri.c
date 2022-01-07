
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct block {int buffer; struct block* next; } ;
typedef int lua_State ;


 int BLOCK_SIZE ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int memcpy (int *,int ,int) ;
 int * skynet_malloc (int) ;

__attribute__((used)) static void
seri(lua_State *L, struct block *b, int len) {
 uint8_t * buffer = skynet_malloc(len);
 uint8_t * ptr = buffer;
 int sz = len;
 while(len>0) {
  if (len >= BLOCK_SIZE) {
   memcpy(ptr, b->buffer, BLOCK_SIZE);
   ptr += BLOCK_SIZE;
   len -= BLOCK_SIZE;
   b = b->next;
  } else {
   memcpy(ptr, b->buffer, len);
   break;
  }
 }

 lua_pushlightuserdata(L, buffer);
 lua_pushinteger(L, sz);
}
