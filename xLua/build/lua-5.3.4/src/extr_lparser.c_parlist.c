
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int nactvar; TYPE_2__* f; } ;
struct TYPE_13__ {char token; } ;
struct TYPE_15__ {TYPE_1__ t; TYPE_4__* fs; } ;
struct TYPE_14__ {int is_vararg; int numparams; } ;
typedef TYPE_2__ Proto ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;




 int adjustlocalvars (TYPE_3__*,int) ;
 int cast_byte (int ) ;
 int luaK_reserveregs (TYPE_4__*,int ) ;
 int luaX_next (TYPE_3__*) ;
 int luaX_syntaxerror (TYPE_3__*,char*) ;
 int new_localvar (TYPE_3__*,int ) ;
 int str_checkname (TYPE_3__*) ;
 scalar_t__ testnext (TYPE_3__*,char) ;

__attribute__((used)) static void parlist (LexState *ls) {

  FuncState *fs = ls->fs;
  Proto *f = fs->f;
  int nparams = 0;
  f->is_vararg = 0;
  if (ls->t.token != ')') {
    do {
      switch (ls->t.token) {
        case 128: {
          new_localvar(ls, str_checkname(ls));
          nparams++;
          break;
        }
        case 129: {
          luaX_next(ls);
          f->is_vararg = 1;
          break;
        }
        default: luaX_syntaxerror(ls, "<name> or '...' expected");
      }
    } while (!f->is_vararg && testnext(ls, ','));
  }
  adjustlocalvars(ls, nparams);
  f->numparams = cast_byte(fs->nactvar);
  luaK_reserveregs(fs, fs->nactvar);
}
