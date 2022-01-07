
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int linenumber; int* packstack; int tmask; scalar_t__ tok; int * p; int sb; int L; scalar_t__ curpack; scalar_t__ depth; } ;
typedef TYPE_1__ CPState ;


 int CPNS_DEFAULT ;
 int cp_get (TYPE_1__*) ;
 int cp_next (TYPE_1__*) ;
 int lj_buf_init (int ,int *) ;
 int lua_assert (int ) ;

__attribute__((used)) static void cp_init(CPState *cp)
{
  cp->linenumber = 1;
  cp->depth = 0;
  cp->curpack = 0;
  cp->packstack[0] = 255;
  lj_buf_init(cp->L, &cp->sb);
  lua_assert(cp->p != ((void*)0));
  cp_get(cp);
  cp->tok = 0;
  cp->tmask = CPNS_DEFAULT;
  cp_next(cp);
}
