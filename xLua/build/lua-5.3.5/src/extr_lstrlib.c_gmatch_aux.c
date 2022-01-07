
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {char const* src_end; int * L; } ;
struct TYPE_5__ {char* src; char const* lastmatch; TYPE_2__ ms; int p; } ;
typedef TYPE_1__ GMatchState ;


 scalar_t__ lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 char* match (TYPE_2__*,char const*,int ) ;
 int push_captures (TYPE_2__*,char const*,char const*) ;
 int reprepstate (TYPE_2__*) ;

__attribute__((used)) static int gmatch_aux (lua_State *L) {
  GMatchState *gm = (GMatchState *)lua_touserdata(L, lua_upvalueindex(3));
  const char *src;
  gm->ms.L = L;
  for (src = gm->src; src <= gm->ms.src_end; src++) {
    const char *e;
    reprepstate(&gm->ms);
    if ((e = match(&gm->ms, src, gm->p)) != ((void*)0) && e != gm->lastmatch) {
      gm->src = gm->lastmatch = e;
      return push_captures(&gm->ms, src, e);
    }
  }
  return 0;
}
