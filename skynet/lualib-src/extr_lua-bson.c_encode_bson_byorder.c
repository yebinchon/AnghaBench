
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int size; int ptr; } ;
typedef int lua_State ;


 int lua_gettop (int *) ;
 void* lua_newuserdata (int *,int ) ;
 int lua_settop (int *,int) ;
 struct bson* lua_touserdata (int *,int) ;
 int memcpy (void*,int ,int ) ;
 int pack_ordered_dict (int *,struct bson*,int,int ) ;

__attribute__((used)) static int
encode_bson_byorder(lua_State *L) {
 int n = lua_gettop(L);
 struct bson *b = lua_touserdata(L, n);
 lua_settop(L, --n);
 pack_ordered_dict(L, b, n, 0);
 lua_settop(L,0);
 void * ud = lua_newuserdata(L, b->size);
 memcpy(ud, b->ptr, b->size);
 return 1;
}
