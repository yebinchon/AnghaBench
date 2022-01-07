
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int openupval; int * stack; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_10__ {scalar_t__ gckind; } ;


 TYPE_7__* G (TYPE_1__*) ;
 scalar_t__ KGC_EMERGENCY ;
 int luaD_shrinkstack (TYPE_1__*) ;
 int luaE_freeCI (TYPE_1__*) ;
 int sweepwholelist (TYPE_1__*,int *) ;

__attribute__((used)) static void sweepthread (lua_State *L, lua_State *L1) {
  if (L1->stack == ((void*)0)) return;
  sweepwholelist(L, &L1->openupval);
  luaE_freeCI(L1);

  if (G(L)->gckind != KGC_EMERGENCY)
    luaD_shrinkstack(L1);
}
