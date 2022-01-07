
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int stack; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_15__ {int size; int hash; } ;
struct TYPE_17__ {int ud; int (* frealloc ) (int ,int ,int,int ) ;int buff; TYPE_1__ strt; scalar_t__ version; } ;
typedef TYPE_3__ global_State ;
typedef int LG ;


 TYPE_3__* G (TYPE_2__*) ;
 int freestack (TYPE_2__*) ;
 int fromstate (TYPE_2__*) ;
 int gettotalbytes (TYPE_3__*) ;
 int luaC_freeallobjects (TYPE_2__*) ;
 int luaF_close (TYPE_2__*,int ) ;
 int luaM_freearray (TYPE_2__*,int ,int ) ;
 int luaZ_freebuffer (TYPE_2__*,int *) ;
 int lua_assert (int) ;
 int luai_userstateclose (TYPE_2__*) ;
 int stub1 (int ,int ,int,int ) ;

__attribute__((used)) static void close_state (lua_State *L) {
  global_State *g = G(L);
  luaF_close(L, L->stack);
  luaC_freeallobjects(L);
  if (g->version)
    luai_userstateclose(L);
  luaM_freearray(L, G(L)->strt.hash, G(L)->strt.size);
  luaZ_freebuffer(L, &g->buff);
  freestack(L);
  lua_assert(gettotalbytes(g) == sizeof(LG));
  (*g->frealloc)(g->ud, fromstate(L), sizeof(LG), 0);
}
