
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson_reader {void* ptr; int size; } ;
typedef int lua_State ;


 int check_reader (int *,struct bson_reader*,int) ;

__attribute__((used)) static inline const void *
read_bytes(lua_State *L, struct bson_reader *br, int sz) {
 const void * r = br->ptr;
 check_reader(L, br, sz);
 br->ptr+=sz;
 br->size-=sz;
 return r;
}
