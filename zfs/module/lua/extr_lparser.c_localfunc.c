
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int info; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_17__ {int startpc; } ;
struct TYPE_16__ {int pc; } ;
struct TYPE_15__ {int linenumber; TYPE_4__* fs; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;


 int adjustlocalvars (TYPE_3__*,int) ;
 int body (TYPE_3__*,TYPE_2__*,int ,int ) ;
 TYPE_8__* getlocvar (TYPE_4__*,int ) ;
 int new_localvar (TYPE_3__*,int ) ;
 int str_checkname (TYPE_3__*) ;

__attribute__((used)) static void localfunc (LexState *ls) {
  expdesc b;
  FuncState *fs = ls->fs;
  new_localvar(ls, str_checkname(ls));
  adjustlocalvars(ls, 1);
  body(ls, &b, 0, ls->linenumber);

  getlocvar(fs, b.u.info)->startpc = fs->pc;
}
