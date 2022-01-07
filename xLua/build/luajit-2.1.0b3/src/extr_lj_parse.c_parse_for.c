
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char tok; int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int GCstr ;
typedef int FuncState ;
typedef int FuncScope ;
typedef int BCLine ;


 int FSCOPE_LOOP ;
 int LJ_ERR_XFOR ;
 int TK_end ;
 int TK_for ;
 char TK_in ;
 int err_syntax (TYPE_1__*,int ) ;
 int fscope_begin (int *,int *,int ) ;
 int fscope_end (int *) ;
 int lex_match (TYPE_1__*,int ,int ,int ) ;
 int * lex_str (TYPE_1__*) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_for_iter (TYPE_1__*,int *) ;
 int parse_for_num (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void parse_for(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  GCstr *varname;
  FuncScope bl;
  fscope_begin(fs, &bl, FSCOPE_LOOP);
  lj_lex_next(ls);
  varname = lex_str(ls);
  if (ls->tok == '=')
    parse_for_num(ls, varname, line);
  else if (ls->tok == ',' || ls->tok == TK_in)
    parse_for_iter(ls, varname);
  else
    err_syntax(ls, LJ_ERR_XFOR);
  lex_match(ls, TK_end, TK_for, line);
  fscope_end(fs);
}
