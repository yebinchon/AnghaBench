
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int pc; int nactvar; int lasttarget; } ;
struct TYPE_16__ {TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef int FuncScope ;
typedef int BCPos ;
typedef int BCLine ;


 int BC_LOOP ;
 int FSCOPE_LOOP ;
 int TK_do ;
 int TK_end ;
 int TK_while ;
 int bcemit_AD (TYPE_2__*,int ,int ,int ) ;
 int bcemit_jmp (TYPE_2__*) ;
 int expr_cond (TYPE_1__*) ;
 int fscope_begin (TYPE_2__*,int *,int ) ;
 int fscope_end (TYPE_2__*) ;
 int jmp_patch (TYPE_2__*,int ,int ) ;
 int jmp_patchins (TYPE_2__*,int ,int ) ;
 int jmp_tohere (TYPE_2__*,int ) ;
 int lex_check (TYPE_1__*,int ) ;
 int lex_match (TYPE_1__*,int ,int ,int ) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_block (TYPE_1__*) ;

__attribute__((used)) static void parse_while(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos start, loop, condexit;
  FuncScope bl;
  lj_lex_next(ls);
  start = fs->lasttarget = fs->pc;
  condexit = expr_cond(ls);
  fscope_begin(fs, &bl, FSCOPE_LOOP);
  lex_check(ls, TK_do);
  loop = bcemit_AD(fs, BC_LOOP, fs->nactvar, 0);
  parse_block(ls);
  jmp_patch(fs, bcemit_jmp(fs), start);
  lex_match(ls, TK_end, TK_while, line);
  fscope_end(fs);
  jmp_tohere(fs, condexit);
  jmp_patchins(fs, loop, fs->pc);
}
