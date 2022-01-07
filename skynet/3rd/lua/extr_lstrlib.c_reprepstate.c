
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ matchdepth; scalar_t__ level; } ;
typedef TYPE_1__ MatchState ;


 scalar_t__ MAXCCALLS ;
 int lua_assert (int) ;

__attribute__((used)) static void reprepstate (MatchState *ms) {
  ms->level = 0;
  lua_assert(ms->matchdepth == MAXCCALLS);
}
