
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_25__ {int freereg; int pc; TYPE_1__* bcbase; } ;
struct TYPE_24__ {void* linenumber; TYPE_3__* fs; } ;
struct TYPE_23__ {void* line; } ;
typedef TYPE_2__ LexState ;
typedef int GCstr ;
typedef TYPE_3__ FuncState ;
typedef int FuncScope ;
typedef int ExpDesc ;
typedef int BCReg ;
typedef int BCPos ;
typedef void* BCLine ;


 int BC_ISNEXT ;
 int BC_ITERC ;
 int BC_ITERL ;
 int BC_ITERN ;
 int BC_JMP ;
 scalar_t__ LJ_FR2 ;
 int NO_JMP ;
 int TK_do ;
 int TK_in ;
 int VARNAME_FOR_CTL ;
 int VARNAME_FOR_GEN ;
 int VARNAME_FOR_STATE ;
 int assign_adjust (TYPE_2__*,int,int ,int *) ;
 int bcemit_ABC (TYPE_3__*,int ,int,int,int) ;
 int bcemit_AJ (TYPE_3__*,int ,int,int ) ;
 int bcreg_bump (TYPE_3__*,scalar_t__) ;
 int bcreg_reserve (TYPE_3__*,int) ;
 int expr_list (TYPE_2__*,int *) ;
 int fscope_begin (TYPE_3__*,int *,int ) ;
 int fscope_end (TYPE_3__*) ;
 int jmp_patchins (TYPE_3__*,int,int) ;
 int lex_check (TYPE_2__*,int ) ;
 scalar_t__ lex_opt (TYPE_2__*,char) ;
 int * lex_str (TYPE_2__*) ;
 int parse_block (TYPE_2__*) ;
 scalar_t__ predict_next (TYPE_2__*,TYPE_3__*,int) ;
 int var_add (TYPE_2__*,int) ;
 int var_new (TYPE_2__*,int ,int *) ;
 int var_new_fixed (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void parse_for_iter(LexState *ls, GCstr *indexname)
{
  FuncState *fs = ls->fs;
  ExpDesc e;
  BCReg nvars = 0;
  BCLine line;
  BCReg base = fs->freereg + 3;
  BCPos loop, loopend, exprpc = fs->pc;
  FuncScope bl;
  int isnext;

  var_new_fixed(ls, nvars++, VARNAME_FOR_GEN);
  var_new_fixed(ls, nvars++, VARNAME_FOR_STATE);
  var_new_fixed(ls, nvars++, VARNAME_FOR_CTL);

  var_new(ls, nvars++, indexname);
  while (lex_opt(ls, ','))
    var_new(ls, nvars++, lex_str(ls));
  lex_check(ls, TK_in);
  line = ls->linenumber;
  assign_adjust(ls, 3, expr_list(ls, &e), &e);

  bcreg_bump(fs, 3+LJ_FR2);
  isnext = (nvars <= 5 && predict_next(ls, fs, exprpc));
  var_add(ls, 3);
  lex_check(ls, TK_do);
  loop = bcemit_AJ(fs, isnext ? BC_ISNEXT : BC_JMP, base, NO_JMP);
  fscope_begin(fs, &bl, 0);
  var_add(ls, nvars-3);
  bcreg_reserve(fs, nvars-3);
  parse_block(ls);
  fscope_end(fs);

  jmp_patchins(fs, loop, fs->pc);
  bcemit_ABC(fs, isnext ? BC_ITERN : BC_ITERC, base, nvars-3+1, 2+1);
  loopend = bcemit_AJ(fs, BC_ITERL, base, NO_JMP);
  fs->bcbase[loopend-1].line = line;
  fs->bcbase[loopend].line = line;
  jmp_patchins(fs, loopend, loop+1);
}
