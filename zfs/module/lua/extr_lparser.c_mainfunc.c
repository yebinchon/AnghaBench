
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_15__ {TYPE_1__* f; } ;
struct TYPE_14__ {int envn; } ;
struct TYPE_13__ {int is_vararg; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;
typedef int BlockCnt ;


 int TK_EOS ;
 int VLOCAL ;
 int check (TYPE_2__*,int ) ;
 int close_func (TYPE_2__*) ;
 int init_exp (int *,int ,int ) ;
 int luaX_next (TYPE_2__*) ;
 int newupvalue (TYPE_3__*,int ,int *) ;
 int open_func (TYPE_2__*,TYPE_3__*,int *) ;
 int statlist (TYPE_2__*) ;

__attribute__((used)) static void mainfunc (LexState *ls, FuncState *fs) {
  BlockCnt bl;
  expdesc v;
  open_func(ls, fs, &bl);
  fs->f->is_vararg = 1;
  init_exp(&v, VLOCAL, 0);
  newupvalue(fs, ls->envn, &v);
  luaX_next(ls);
  statlist(ls);
  check(ls, TK_EOS);
  close_func(ls);
}
