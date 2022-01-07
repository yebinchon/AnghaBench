
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_8__ {scalar_t__ udtype; } ;
typedef int TValue ;
typedef int CLibrary ;


 int LUA_TSTRING ;
 int LUA_TUSERDATA ;
 scalar_t__ UDTYPE_FFI_CLIB ;
 int * lj_clib_index (TYPE_1__*,int *,int ) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int strV (int *) ;
 scalar_t__ tvisstr (int *) ;
 scalar_t__ tvisudata (int *) ;
 TYPE_2__* udataV (int *) ;
 scalar_t__ uddata (TYPE_2__*) ;

__attribute__((used)) static TValue *ffi_clib_index(lua_State *L)
{
  TValue *o = L->base;
  CLibrary *cl;
  if (!(o < L->top && tvisudata(o) && udataV(o)->udtype == UDTYPE_FFI_CLIB))
    lj_err_argt(L, 1, LUA_TUSERDATA);
  cl = (CLibrary *)uddata(udataV(o));
  if (!(o+1 < L->top && tvisstr(o+1)))
    lj_err_argt(L, 2, LUA_TSTRING);
  return lj_clib_index(L, cl, strV(o+1));
}
