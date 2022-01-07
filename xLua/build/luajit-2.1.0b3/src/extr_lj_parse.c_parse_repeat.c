
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int flags; } ;
struct TYPE_19__ {int pc; int nactvar; int lasttarget; } ;
struct TYPE_18__ {TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ FuncScope ;
typedef int BCPos ;
typedef int BCLine ;


 int BC_LOOP ;
 int FSCOPE_LOOP ;
 int FSCOPE_UPVAL ;
 int TK_repeat ;
 int TK_until ;
 int bcemit_AD (TYPE_2__*,int ,int ,int ) ;
 int bcemit_jmp (TYPE_2__*) ;
 int expr_cond (TYPE_1__*) ;
 int fscope_begin (TYPE_2__*,TYPE_3__*,int ) ;
 int fscope_end (TYPE_2__*) ;
 int jmp_patch (TYPE_2__*,int ,int ) ;
 int jmp_patchins (TYPE_2__*,int ,int ) ;
 int jmp_tohere (TYPE_2__*,int ) ;
 int lex_match (TYPE_1__*,int ,int ,int ) ;
 int lj_lex_next (TYPE_1__*) ;
 int parse_break (TYPE_1__*) ;
 int parse_chunk (TYPE_1__*) ;

__attribute__((used)) static void parse_repeat(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos loop = fs->lasttarget = fs->pc;
  BCPos condexit;
  FuncScope bl1, bl2;
  fscope_begin(fs, &bl1, FSCOPE_LOOP);
  fscope_begin(fs, &bl2, 0);
  lj_lex_next(ls);
  bcemit_AD(fs, BC_LOOP, fs->nactvar, 0);
  parse_chunk(ls);
  lex_match(ls, TK_until, TK_repeat, line);
  condexit = expr_cond(ls);
  if (!(bl2.flags & FSCOPE_UPVAL)) {
    fscope_end(fs);
  } else {
    parse_break(ls);
    jmp_tohere(fs, condexit);
    fscope_end(fs);
    condexit = bcemit_jmp(fs);
  }
  jmp_patch(fs, condexit, loop);
  jmp_patchins(fs, loop, fs->pc);
  fscope_end(fs);
}
