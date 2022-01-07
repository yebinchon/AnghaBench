
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int closed; int tv; int v; int gct; } ;
typedef TYPE_1__ GCupval ;


 int LJ_TUPVAL ;
 scalar_t__ lj_mem_newgco (int *,int) ;
 int setmref (int ,int *) ;
 int setnilV (int *) ;

__attribute__((used)) static GCupval *func_emptyuv(lua_State *L)
{
  GCupval *uv = (GCupval *)lj_mem_newgco(L, sizeof(GCupval));
  uv->gct = ~LJ_TUPVAL;
  uv->closed = 1;
  setnilV(&uv->tv);
  setmref(uv->v, &uv->tv);
  return uv;
}
