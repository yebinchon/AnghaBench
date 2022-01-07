
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int global_State ;
struct TYPE_3__ {int sb; int sizevstack; int vstack; int sizebcstack; int bcstack; } ;
typedef TYPE_1__ LexState ;


 int BCInsLine ;
 int * G (int *) ;
 int VarInfo ;
 int lj_buf_free (int *,int *) ;
 int lj_mem_freevec (int *,int ,int ,int ) ;

void lj_lex_cleanup(lua_State *L, LexState *ls)
{
  global_State *g = G(L);
  lj_mem_freevec(g, ls->bcstack, ls->sizebcstack, BCInsLine);
  lj_mem_freevec(g, ls->vstack, ls->sizevstack, VarInfo);
  lj_buf_free(g, &ls->sb);
}
