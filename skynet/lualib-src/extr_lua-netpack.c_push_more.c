
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int size; int buffer; } ;
struct uncomplete {int read; TYPE_1__ pack; int header; } ;
typedef int lua_State ;


 int memcpy (int ,int *,int) ;
 int push_data (int *,int,int *,int,int) ;
 int read_size (int *) ;
 struct uncomplete* save_uncomplete (int *,int) ;
 int skynet_malloc (int) ;

__attribute__((used)) static void
push_more(lua_State *L, int fd, uint8_t *buffer, int size) {
 if (size == 1) {
  struct uncomplete * uc = save_uncomplete(L, fd);
  uc->read = -1;
  uc->header = *buffer;
  return;
 }
 int pack_size = read_size(buffer);
 buffer += 2;
 size -= 2;

 if (size < pack_size) {
  struct uncomplete * uc = save_uncomplete(L, fd);
  uc->read = size;
  uc->pack.size = pack_size;
  uc->pack.buffer = skynet_malloc(pack_size);
  memcpy(uc->pack.buffer, buffer, size);
  return;
 }
 push_data(L, fd, buffer, pack_size, 1);

 buffer += pack_size;
 size -= pack_size;
 if (size > 0) {
  push_more(L, fd, buffer, size);
 }
}
