
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int token; } ;
struct TYPE_11__ {TYPE_1__ t; int * fs; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;
typedef int BlockCnt ;


 int TK_END ;
 int TK_FOR ;

 int check_match (TYPE_2__*,int ,int ,int) ;
 int enterblock (int *,int *,int) ;
 int forlist (TYPE_2__*,int *) ;
 int fornum (TYPE_2__*,int *,int) ;
 int leaveblock (int *) ;
 int luaX_next (TYPE_2__*) ;
 int luaX_syntaxerror (TYPE_2__*,char*) ;
 int * str_checkname (TYPE_2__*) ;

__attribute__((used)) static void forstat (LexState *ls, int line) {

  FuncState *fs = ls->fs;
  TString *varname;
  BlockCnt bl;
  enterblock(fs, &bl, 1);
  luaX_next(ls);
  varname = str_checkname(ls);
  switch (ls->t.token) {
    case '=': fornum(ls, varname, line); break;
    case ',': case 128: forlist(ls, varname); break;
    default: luaX_syntaxerror(ls, "'=' or 'in' expected");
  }
  check_match(ls, TK_END, TK_FOR, line);
  leaveblock(fs);
}
