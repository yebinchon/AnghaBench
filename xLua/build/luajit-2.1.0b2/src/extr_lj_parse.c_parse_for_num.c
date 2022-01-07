
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {size_t pc; TYPE_1__* bcbase; int freereg; } ;
struct TYPE_19__ {TYPE_3__* fs; } ;
struct TYPE_18__ {int line; } ;
typedef TYPE_2__ LexState ;
typedef int GCstr ;
typedef TYPE_3__ FuncState ;
typedef int FuncScope ;
typedef int BCReg ;
typedef size_t BCPos ;
typedef int BCLine ;


 int BC_FORI ;
 int BC_FORL ;
 int BC_KSHORT ;
 int FORL_EXT ;
 int FORL_IDX ;
 int FORL_STEP ;
 int FORL_STOP ;
 int NO_JMP ;
 char TK_do ;
 int VARNAME_FOR_IDX ;
 int VARNAME_FOR_STEP ;
 int VARNAME_FOR_STOP ;
 int bcemit_AD (TYPE_3__*,int ,int ,int) ;
 size_t bcemit_AJ (TYPE_3__*,int ,int ,int ) ;
 int bcreg_reserve (TYPE_3__*,int) ;
 int expr_next (TYPE_2__*) ;
 int fscope_begin (TYPE_3__*,int *,int ) ;
 int fscope_end (TYPE_3__*) ;
 int jmp_patchins (TYPE_3__*,size_t,size_t) ;
 int lex_check (TYPE_2__*,char) ;
 scalar_t__ lex_opt (TYPE_2__*,char) ;
 int parse_block (TYPE_2__*) ;
 int var_add (TYPE_2__*,int) ;
 int var_new (TYPE_2__*,int ,int *) ;
 int var_new_fixed (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void parse_for_num(LexState *ls, GCstr *varname, BCLine line)
{
  FuncState *fs = ls->fs;
  BCReg base = fs->freereg;
  FuncScope bl;
  BCPos loop, loopend;

  var_new_fixed(ls, FORL_IDX, VARNAME_FOR_IDX);
  var_new_fixed(ls, FORL_STOP, VARNAME_FOR_STOP);
  var_new_fixed(ls, FORL_STEP, VARNAME_FOR_STEP);

  var_new(ls, FORL_EXT, varname);
  lex_check(ls, '=');
  expr_next(ls);
  lex_check(ls, ',');
  expr_next(ls);
  if (lex_opt(ls, ',')) {
    expr_next(ls);
  } else {
    bcemit_AD(fs, BC_KSHORT, fs->freereg, 1);
    bcreg_reserve(fs, 1);
  }
  var_add(ls, 3);
  lex_check(ls, TK_do);
  loop = bcemit_AJ(fs, BC_FORI, base, NO_JMP);
  fscope_begin(fs, &bl, 0);
  var_add(ls, 1);
  bcreg_reserve(fs, 1);
  parse_block(ls);
  fscope_end(fs);

  loopend = bcemit_AJ(fs, BC_FORL, base, NO_JMP);
  fs->bcbase[loopend].line = line;
  jmp_patchins(fs, loopend, loop+1);
  jmp_patchins(fs, loop, fs->pc);
}
