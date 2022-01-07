
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_7__ {int env; int pc; scalar_t__ nupvalues; int ffid; int gct; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_8__ {scalar_t__ flags; scalar_t__ sizeuv; } ;
typedef int MSize ;
typedef int GCtab ;
typedef TYPE_2__ GCproto ;
typedef TYPE_3__ GCfunc ;


 int FF_LUA ;
 int LJ_TFUNC ;
 int PROTO_CLCOUNT ;
 int PROTO_CLC_BITS ;
 scalar_t__ lj_mem_newgco (int *,int ) ;
 int obj2gco (int *) ;
 int proto_bc (TYPE_2__*) ;
 int setgcref (int ,int ) ;
 int setmref (int ,int ) ;
 int sizeLfunc (int ) ;

__attribute__((used)) static GCfunc *func_newL(lua_State *L, GCproto *pt, GCtab *env)
{
  uint32_t count;
  GCfunc *fn = (GCfunc *)lj_mem_newgco(L, sizeLfunc((MSize)pt->sizeuv));
  fn->l.gct = ~LJ_TFUNC;
  fn->l.ffid = FF_LUA;
  fn->l.nupvalues = 0;

  setmref(fn->l.pc, proto_bc(pt));
  setgcref(fn->l.env, obj2gco(env));

  count = (uint32_t)pt->flags + PROTO_CLCOUNT;
  pt->flags = (uint8_t)(count - ((count >> PROTO_CLC_BITS) & PROTO_CLCOUNT));
  return fn;
}
