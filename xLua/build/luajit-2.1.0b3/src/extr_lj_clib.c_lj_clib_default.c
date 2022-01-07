
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int handle; } ;
typedef int GCtab ;
typedef TYPE_1__ CLibrary ;


 int CLIB_DEFHANDLE ;
 TYPE_1__* clib_new (int *,int *) ;

void lj_clib_default(lua_State *L, GCtab *mt)
{
  CLibrary *cl = clib_new(L, mt);
  cl->handle = CLIB_DEFHANDLE;
}
