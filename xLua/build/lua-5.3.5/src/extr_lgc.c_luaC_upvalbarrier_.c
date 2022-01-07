
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int global_State ;
struct TYPE_4__ {int v; } ;
typedef TYPE_1__ UpVal ;
typedef int GCObject ;


 int * G (int *) ;
 int * gcvalue (int ) ;
 scalar_t__ keepinvariant (int *) ;
 int lua_assert (int) ;
 int markobject (int *,int *) ;
 int upisopen (TYPE_1__*) ;

void luaC_upvalbarrier_ (lua_State *L, UpVal *uv) {
  global_State *g = G(L);
  GCObject *o = gcvalue(uv->v);
  lua_assert(!upisopen(uv));
  if (keepinvariant(g))
    markobject(g, o);
}
