
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_14__ {int * cache; } ;
struct TYPE_13__ {int metatable; int udtype; } ;
typedef TYPE_2__ GCudata ;
typedef int GCtab ;
typedef TYPE_3__ CLibrary ;


 int UDTYPE_FFI_CLIB ;
 int * lj_tab_new (TYPE_1__*,int ,int ) ;
 TYPE_2__* lj_udata_new (TYPE_1__*,int,int *) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;
 int setudataV (TYPE_1__*,int ,TYPE_2__*) ;
 scalar_t__ uddata (TYPE_2__*) ;

__attribute__((used)) static CLibrary *clib_new(lua_State *L, GCtab *mt)
{
  GCtab *t = lj_tab_new(L, 0, 0);
  GCudata *ud = lj_udata_new(L, sizeof(CLibrary), t);
  CLibrary *cl = (CLibrary *)uddata(ud);
  cl->cache = t;
  ud->udtype = UDTYPE_FFI_CLIB;

  setgcref(ud->metatable, obj2gco(mt));
  setudataV(L, L->top++, ud);
  return cl;
}
