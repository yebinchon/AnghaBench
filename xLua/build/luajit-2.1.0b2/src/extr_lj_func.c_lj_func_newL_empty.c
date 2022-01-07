
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_12__ {scalar_t__ nupvalues; int * uvptr; } ;
struct TYPE_15__ {TYPE_1__ l; } ;
struct TYPE_14__ {size_t sizeuv; } ;
struct TYPE_13__ {int dhash; } ;
typedef size_t MSize ;
typedef TYPE_2__ GCupval ;
typedef int GCtab ;
typedef TYPE_3__ GCproto ;
typedef TYPE_4__ GCfunc ;


 TYPE_2__* func_emptyuv (int *) ;
 TYPE_4__* func_newL (int *,TYPE_3__*,int *) ;
 int obj2gco (TYPE_2__*) ;
 scalar_t__* proto_uv (TYPE_3__*) ;
 int setgcref (int ,int ) ;

GCfunc *lj_func_newL_empty(lua_State *L, GCproto *pt, GCtab *env)
{
  GCfunc *fn = func_newL(L, pt, env);
  MSize i, nuv = pt->sizeuv;

  for (i = 0; i < nuv; i++) {
    GCupval *uv = func_emptyuv(L);
    uv->dhash = (uint32_t)(uintptr_t)pt ^ ((uint32_t)proto_uv(pt)[i] << 24);
    setgcref(fn->l.uvptr[i], obj2gco(uv));
  }
  fn->l.nupvalues = (uint8_t)nuv;
  return fn;
}
