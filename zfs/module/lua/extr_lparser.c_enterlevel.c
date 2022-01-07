
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nCcalls; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_5__ {int fs; TYPE_1__* L; } ;
typedef TYPE_2__ LexState ;


 int LUAI_MAXCCALLS ;
 int checklimit (int ,int ,int ,char*) ;

__attribute__((used)) static void enterlevel (LexState *ls) {
  lua_State *L = ls->L;
  ++L->nCcalls;
  checklimit(ls->fs, L->nCcalls, LUAI_MAXCCALLS, "C levels");
}
