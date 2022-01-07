
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;


struct TYPE_25__ {int token; } ;
struct TYPE_27__ {int linenumber; TYPE_11__* fs; TYPE_1__ t; } ;
struct TYPE_26__ {scalar_t__ maxstacksize; } ;
struct TYPE_24__ {scalar_t__ freereg; scalar_t__ nactvar; TYPE_2__* f; } ;
typedef TYPE_3__ LexState ;





 int TK_END ;
 int block (TYPE_3__*) ;
 int check_match (TYPE_3__*,int ,int const,int) ;
 int enterlevel (TYPE_3__*) ;
 int exprstat (TYPE_3__*) ;
 int forstat (TYPE_3__*,int) ;
 int funcstat (TYPE_3__*,int) ;
 int gotostat (TYPE_3__*,int ) ;
 int ifstat (TYPE_3__*,int) ;
 int labelstat (TYPE_3__*,int ,int) ;
 int leavelevel (TYPE_3__*) ;
 int localfunc (TYPE_3__*) ;
 int localstat (TYPE_3__*) ;
 int luaK_jump (TYPE_11__*) ;
 int luaX_next (TYPE_3__*) ;
 int lua_assert (int) ;
 int repeatstat (TYPE_3__*,int) ;
 int retstat (TYPE_3__*) ;
 int str_checkname (TYPE_3__*) ;
 int testnext (TYPE_3__*,int const) ;
 int whilestat (TYPE_3__*,int) ;

__attribute__((used)) static void statement (LexState *ls) {
  int line = ls->linenumber;
  enterlevel(ls);
  switch (ls->t.token) {
    case ';': {
      luaX_next(ls);
      break;
    }
    case 132: {
      ifstat(ls, line);
      break;
    }
    case 128: {
      whilestat(ls, line);
      break;
    }
    case 136: {
      luaX_next(ls);
      block(ls);
      check_match(ls, TK_END, 136, line);
      break;
    }
    case 135: {
      forstat(ls, line);
      break;
    }
    case 130: {
      repeatstat(ls, line);
      break;
    }
    case 134: {
      funcstat(ls, line);
      break;
    }
    case 131: {
      luaX_next(ls);
      if (testnext(ls, 134))
        localfunc(ls);
      else
        localstat(ls);
      break;
    }
    case 137: {
      luaX_next(ls);
      labelstat(ls, str_checkname(ls), line);
      break;
    }
    case 129: {
      luaX_next(ls);
      retstat(ls);
      break;
    }
    case 138:
    case 133: {
      gotostat(ls, luaK_jump(ls->fs));
      break;
    }
    default: {
      exprstat(ls);
      break;
    }
  }
  lua_assert(ls->fs->f->maxstacksize >= ls->fs->freereg &&
             ls->fs->freereg >= ls->fs->nactvar);
  ls->fs->freereg = ls->fs->nactvar;
  leavelevel(ls);
}
