
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nci; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {struct TYPE_7__* previous; struct TYPE_7__* next; } ;
typedef TYPE_2__ CallInfo ;


 int luaM_free (TYPE_1__*,TYPE_2__*) ;

void luaE_shrinkCI (lua_State *L) {
  CallInfo *ci = L->ci;
  CallInfo *next2;

  while (ci->next != ((void*)0) && (next2 = ci->next->next) != ((void*)0)) {
    luaM_free(L, ci->next);
    L->nci--;
    ci->next = next2;
    next2->previous = ci;
    ci = next2;
  }
}
