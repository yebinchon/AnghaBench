
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int func; int top; scalar_t__ callstatus; int * previous; int next; } ;
struct TYPE_6__ {int stack; int stacksize; int top; int stack_last; TYPE_2__* ci; TYPE_2__ base_ci; } ;
typedef TYPE_1__ lua_State ;
typedef TYPE_2__ CallInfo ;


 int BASIC_STACK_SIZE ;
 int EXTRA_STACK ;
 int LUA_MINSTACK ;
 int TValue ;
 int luaM_newvector (TYPE_1__*,int,int ) ;
 int setnilvalue (int) ;

__attribute__((used)) static void stack_init (lua_State *L1, lua_State *L) {
  int i; CallInfo *ci;

  L1->stack = luaM_newvector(L, BASIC_STACK_SIZE, TValue);
  L1->stacksize = BASIC_STACK_SIZE;
  for (i = 0; i < BASIC_STACK_SIZE; i++)
    setnilvalue(L1->stack + i);
  L1->top = L1->stack;
  L1->stack_last = L1->stack + L1->stacksize - EXTRA_STACK;

  ci = &L1->base_ci;
  ci->next = ci->previous = ((void*)0);
  ci->callstatus = 0;
  ci->func = L1->top;
  setnilvalue(L1->top++);
  ci->top = L1->top + LUA_MINSTACK;
  L1->ci = ci;
}
