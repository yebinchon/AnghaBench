
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * varname; } ;
struct TYPE_12__ {scalar_t__ nactvar; int pc; int line; int * name; } ;
struct TYPE_11__ {int n; TYPE_4__* arr; } ;
struct TYPE_10__ {int L; TYPE_1__* dyd; int * fs; } ;
struct TYPE_9__ {TYPE_3__ gt; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ Labellist ;
typedef TYPE_4__ Labeldesc ;
typedef int FuncState ;


 int eqstr (int *,int *) ;
 TYPE_6__* getlocvar (int *,scalar_t__) ;
 int getstr (int *) ;
 int luaK_patchlist (int *,int ,int ) ;
 char* luaO_pushfstring (int ,char*,int ,int ,int ) ;
 int lua_assert (int ) ;
 int semerror (TYPE_2__*,char const*) ;

__attribute__((used)) static void closegoto (LexState *ls, int g, Labeldesc *label) {
  int i;
  FuncState *fs = ls->fs;
  Labellist *gl = &ls->dyd->gt;
  Labeldesc *gt = &gl->arr[g];
  lua_assert(eqstr(gt->name, label->name));
  if (gt->nactvar < label->nactvar) {
    TString *vname = getlocvar(fs, gt->nactvar)->varname;
    const char *msg = luaO_pushfstring(ls->L,
      "<goto %s> at line %d jumps into the scope of local '%s'",
      getstr(gt->name), gt->line, getstr(vname));
    semerror(ls, msg);
  }
  luaK_patchlist(fs, gt->pc, label->pc);

  for (i = g; i < gl->n - 1; i++)
    gl->arr[i] = gl->arr[i + 1];
  gl->n--;
}
