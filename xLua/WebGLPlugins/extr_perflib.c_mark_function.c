
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int used_in ;
typedef int lua_State ;
struct TYPE_3__ {char* short_src; int linedefined; int lastlinedefined; } ;
typedef TYPE_1__ lua_Debug ;


 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TTABLE ;
 int MARKED_TABLE ;
 int RT_UPVALUE ;
 int is_marked (int *,void const*) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 char* lua_getupvalue (int *,int,int) ;
 int lua_insert (int *,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int ) ;
 void* lua_topointer (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int make_root (int *,void const*,char const*,int ,char*,int) ;
 int mark_object (int *,int *) ;
 int marked (int *,void const*,int ) ;
 int snprintf (char*,int,char*,char*,int,int) ;

__attribute__((used)) static void mark_function(lua_State *L, lua_State *dL) {
 const void *p = lua_topointer(L, -1);
 int i;
 lua_Debug ar;
 char used_in[128];
 const char *name;


 if (!is_marked(dL, p)) {
  marked(dL, p, 0);

  lua_pushvalue(L, -1);
  lua_getinfo(L, ">S", &ar);
  snprintf(used_in, sizeof(used_in) - 1, "%s:%d~%d", ar.short_src, ar.linedefined, ar.lastlinedefined);
  used_in[sizeof(used_in) - 1] = 0;

  for (i=1;;i++) {
   name = lua_getupvalue(L,-1,i);
   if (name == ((void*)0))
    break;
   p = lua_topointer(L, -1);

   if (*name != '\0' && LUA_TTABLE == lua_type(L, -1)) {
    make_root(dL, p, name, RT_UPVALUE, used_in, 1);
    lua_insert(dL, MARKED_TABLE);
    mark_object(L, dL);
    lua_remove(dL, MARKED_TABLE);
   } else if (LUA_TFUNCTION == lua_type(L, -1)) {
    mark_function(L, dL);
   }
   lua_pop(L, 1);
  }
 }
}
