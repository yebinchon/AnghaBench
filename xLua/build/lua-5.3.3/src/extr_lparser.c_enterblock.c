
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lu_byte ;
struct TYPE_14__ {scalar_t__ nactvar; struct TYPE_14__* previous; scalar_t__ upval; int firstgoto; int firstlabel; int isloop; } ;
struct TYPE_13__ {scalar_t__ nactvar; scalar_t__ freereg; TYPE_6__* bl; TYPE_4__* ls; } ;
struct TYPE_12__ {TYPE_3__* dyd; } ;
struct TYPE_10__ {int n; } ;
struct TYPE_9__ {int n; } ;
struct TYPE_11__ {TYPE_2__ gt; TYPE_1__ label; } ;
typedef TYPE_5__ FuncState ;
typedef TYPE_6__ BlockCnt ;


 int lua_assert (int) ;

__attribute__((used)) static void enterblock (FuncState *fs, BlockCnt *bl, lu_byte isloop) {
  bl->isloop = isloop;
  bl->nactvar = fs->nactvar;
  bl->firstlabel = fs->ls->dyd->label.n;
  bl->firstgoto = fs->ls->dyd->gt.n;
  bl->upval = 0;
  bl->previous = fs->bl;
  fs->bl = bl;
  lua_assert(fs->freereg == fs->nactvar);
}
