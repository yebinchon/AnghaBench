
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nci; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ CallInfo ;


 int luaM_free (TYPE_1__*,TYPE_2__*) ;

void luaE_freeCI (lua_State *L) {
  CallInfo *ci = L->ci;
  CallInfo *next = ci->next;
  ci->next = ((void*)0);
  while ((ci = next) != ((void*)0)) {
    next = ci->next;
    luaM_free(L, ci);
    L->nci--;
  }
}
