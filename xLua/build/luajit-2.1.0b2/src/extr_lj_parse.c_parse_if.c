
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tok; int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int BCPos ;
typedef int BCLine ;


 int NO_JMP ;
 scalar_t__ TK_else ;
 scalar_t__ TK_elseif ;
 int TK_end ;
 int TK_if ;
 int bcemit_jmp (int *) ;
 int jmp_append (int *,int *,int ) ;
 int jmp_tohere (int *,int ) ;
 int lex_match (TYPE_1__*,int ,int ,int ) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_block (TYPE_1__*) ;
 int parse_then (TYPE_1__*) ;

__attribute__((used)) static void parse_if(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos flist;
  BCPos escapelist = NO_JMP;
  flist = parse_then(ls);
  while (ls->tok == TK_elseif) {
    jmp_append(fs, &escapelist, bcemit_jmp(fs));
    jmp_tohere(fs, flist);
    flist = parse_then(ls);
  }
  if (ls->tok == TK_else) {
    jmp_append(fs, &escapelist, bcemit_jmp(fs));
    jmp_tohere(fs, flist);
    lj_lex_next(ls);
    parse_block(ls);
  } else {
    jmp_append(fs, &escapelist, flist);
  }
  jmp_tohere(fs, escapelist);
  lex_match(ls, TK_end, TK_if, line);
}
