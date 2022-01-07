
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_11__ {int framesize; int kt; scalar_t__ flags; int * bl; scalar_t__ nuv; scalar_t__ nactvar; scalar_t__ nkn; scalar_t__ nkgc; scalar_t__ freereg; int jpc; scalar_t__ lasttarget; scalar_t__ pc; TYPE_1__* L; int vbase; TYPE_2__* ls; struct TYPE_11__* prev; } ;
struct TYPE_10__ {int vtop; TYPE_3__* fs; TYPE_1__* L; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;


 int NO_JMP ;
 int incr_top (TYPE_1__*) ;
 int lj_tab_new (TYPE_1__*,int ,int ) ;
 int settabV (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void fs_init(LexState *ls, FuncState *fs)
{
  lua_State *L = ls->L;
  fs->prev = ls->fs; ls->fs = fs;
  fs->ls = ls;
  fs->vbase = ls->vtop;
  fs->L = L;
  fs->pc = 0;
  fs->lasttarget = 0;
  fs->jpc = NO_JMP;
  fs->freereg = 0;
  fs->nkgc = 0;
  fs->nkn = 0;
  fs->nactvar = 0;
  fs->nuv = 0;
  fs->bl = ((void*)0);
  fs->flags = 0;
  fs->framesize = 1;
  fs->kt = lj_tab_new(L, 0, 0);

  settabV(L, L->top, fs->kt);
  incr_top(L);
}
