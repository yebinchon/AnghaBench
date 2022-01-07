
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {void* handle; } ;
typedef int GCtab ;
typedef int GCstr ;
typedef TYPE_1__ CLibrary ;


 void* clib_loadlib (int *,int ,int) ;
 TYPE_1__* clib_new (int *,int *) ;
 int strdata (int *) ;

void lj_clib_load(lua_State *L, GCtab *mt, GCstr *name, int global)
{
  void *handle = clib_loadlib(L, strdata(name), global);
  CLibrary *cl = clib_new(L, mt);
  cl->handle = handle;
}
