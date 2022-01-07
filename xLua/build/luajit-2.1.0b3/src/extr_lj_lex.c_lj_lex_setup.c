
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_12__ {int linenumber; int lastline; int c; scalar_t__* p; scalar_t__* pe; int lookahead; scalar_t__ tok; scalar_t__ sizebcstack; int * bcstack; scalar_t__ vtop; scalar_t__ sizevstack; int * vstack; int * fs; TYPE_1__* L; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ LEX_EOF ;
 int LJ_ERR_BCBAD ;
 int LUA_ERRSYNTAX ;
 scalar_t__* LUA_SIGNATURE ;
 int TK_eof ;
 int lex_iseol (TYPE_2__*) ;
 int lex_newline (TYPE_2__*) ;
 int lex_next (TYPE_2__*) ;
 int lj_err_str (TYPE_1__*,int ) ;
 int lj_err_throw (TYPE_1__*,int ) ;
 int setstrV (TYPE_1__*,int ,int ) ;

int lj_lex_setup(lua_State *L, LexState *ls)
{
  int header = 0;
  ls->L = L;
  ls->fs = ((void*)0);
  ls->pe = ls->p = ((void*)0);
  ls->vstack = ((void*)0);
  ls->sizevstack = 0;
  ls->vtop = 0;
  ls->bcstack = ((void*)0);
  ls->sizebcstack = 0;
  ls->tok = 0;
  ls->lookahead = TK_eof;
  ls->linenumber = 1;
  ls->lastline = 1;
  lex_next(ls);
  if (ls->c == 0xef && ls->p + 2 <= ls->pe && (uint8_t)ls->p[0] == 0xbb &&
      (uint8_t)ls->p[1] == 0xbf) {
    ls->p += 2;
    lex_next(ls);
    header = 1;
  }
  if (ls->c == '#') {
    do {
      lex_next(ls);
      if (ls->c == LEX_EOF) return 0;
    } while (!lex_iseol(ls));
    lex_newline(ls);
    header = 1;
  }
  if (ls->c == LUA_SIGNATURE[0]) {
    if (header) {






      setstrV(L, L->top++, lj_err_str(L, LJ_ERR_BCBAD));
      lj_err_throw(L, LUA_ERRSYNTAX);
    }
    return 1;
  }
  return 0;
}
