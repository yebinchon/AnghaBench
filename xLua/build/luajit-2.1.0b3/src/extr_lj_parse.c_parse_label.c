
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_18__ {TYPE_12__* bl; int pc; int lasttarget; } ;
struct TYPE_17__ {char tok; TYPE_1__* vstack; TYPE_3__* fs; } ;
struct TYPE_16__ {int slot; } ;
struct TYPE_15__ {int nactvar; int flags; } ;
typedef size_t MSize ;
typedef TYPE_2__ LexState ;
typedef int GCstr ;
typedef TYPE_3__ FuncState ;


 int FSCOPE_GOLA ;
 scalar_t__ LJ_52 ;
 int LJ_ERR_XLDUP ;
 char TK_label ;
 char TK_until ;
 int VSTACK_LABEL ;
 scalar_t__ gola_findlabel (TYPE_2__*,int *) ;
 size_t gola_new (TYPE_2__*,int *,int ,int ) ;
 int gola_resolve (TYPE_2__*,TYPE_12__*,size_t) ;
 int lex_check (TYPE_2__*,char) ;
 int * lex_str (TYPE_2__*) ;
 int lj_lex_error (TYPE_2__*,int ,int ,int ) ;
 int lj_lex_next (TYPE_2__*) ;
 scalar_t__ parse_isend (char) ;
 int strdata (int *) ;
 int synlevel_begin (TYPE_2__*) ;
 int synlevel_end (TYPE_2__*) ;

__attribute__((used)) static void parse_label(LexState *ls)
{
  FuncState *fs = ls->fs;
  GCstr *name;
  MSize idx;
  fs->lasttarget = fs->pc;
  fs->bl->flags |= FSCOPE_GOLA;
  lj_lex_next(ls);
  name = lex_str(ls);
  if (gola_findlabel(ls, name))
    lj_lex_error(ls, 0, LJ_ERR_XLDUP, strdata(name));
  idx = gola_new(ls, name, VSTACK_LABEL, fs->pc);
  lex_check(ls, TK_label);

  for (;;) {
    if (ls->tok == TK_label) {
      synlevel_begin(ls);
      parse_label(ls);
      synlevel_end(ls);
    } else if (LJ_52 && ls->tok == ';') {
      lj_lex_next(ls);
    } else {
      break;
    }
  }

  if (parse_isend(ls->tok) && ls->tok != TK_until)
    ls->vstack[idx].slot = fs->bl->nactvar;
  gola_resolve(ls, fs->bl, idx);
}
