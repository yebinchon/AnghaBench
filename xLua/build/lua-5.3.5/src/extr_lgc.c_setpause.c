
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int l_mem ;
struct TYPE_5__ {int GCestimate; int gcpause; } ;
typedef TYPE_1__ global_State ;


 int MAX_LMEM ;
 int PAUSEADJ ;
 int gettotalbytes (TYPE_1__*) ;
 int luaE_setdebt (TYPE_1__*,int) ;
 int lua_assert (int) ;

__attribute__((used)) static void setpause (global_State *g) {
  l_mem threshold, debt;
  l_mem estimate = g->GCestimate / PAUSEADJ;
  lua_assert(estimate > 0);
  threshold = (g->gcpause < MAX_LMEM / estimate)
            ? estimate * g->gcpause
            : MAX_LMEM;
  debt = gettotalbytes(g) - threshold;
  luaE_setdebt(g, debt);
}
