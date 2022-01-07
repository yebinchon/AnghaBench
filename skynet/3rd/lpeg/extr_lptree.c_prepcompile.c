
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int tree; } ;
typedef TYPE_1__ Pattern ;
typedef int Instruction ;


 int * compile (int *,TYPE_1__*) ;
 int finalfix (int *,int ,int *,int ) ;
 int lua_getuservalue (int *,int) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static Instruction *prepcompile (lua_State *L, Pattern *p, int idx) {
  lua_getuservalue(L, idx);
  finalfix(L, 0, ((void*)0), p->tree);
  lua_pop(L, 1);
  return compile(L, p);
}
