
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int slot; } ;
typedef TYPE_2__ VarInfo ;
struct TYPE_15__ {TYPE_1__* bl; } ;
struct TYPE_14__ {TYPE_4__* fs; } ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_3__ LexState ;
typedef int GCstr ;
typedef TYPE_4__ FuncState ;


 int BC_LOOP ;
 int FSCOPE_GOLA ;
 int VSTACK_GOTO ;
 int bcemit_AJ (TYPE_4__*,int ,int ,int) ;
 int bcemit_jmp (TYPE_4__*) ;
 TYPE_2__* gola_findlabel (TYPE_3__*,int *) ;
 int gola_new (TYPE_3__*,int *,int ,int ) ;
 int * lex_str (TYPE_3__*) ;

__attribute__((used)) static void parse_goto(LexState *ls)
{
  FuncState *fs = ls->fs;
  GCstr *name = lex_str(ls);
  VarInfo *vl = gola_findlabel(ls, name);
  if (vl)
    bcemit_AJ(fs, BC_LOOP, vl->slot, -1);
  fs->bl->flags |= FSCOPE_GOLA;
  gola_new(ls, name, VSTACK_GOTO, bcemit_jmp(fs));
}
