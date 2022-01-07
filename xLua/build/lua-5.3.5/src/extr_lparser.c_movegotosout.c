
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* dyd; } ;
struct TYPE_14__ {int firstgoto; int nactvar; scalar_t__ upval; } ;
struct TYPE_13__ {TYPE_9__* ls; } ;
struct TYPE_12__ {int nactvar; int pc; } ;
struct TYPE_11__ {int n; TYPE_3__* arr; } ;
struct TYPE_10__ {TYPE_2__ gt; } ;
typedef TYPE_2__ Labellist ;
typedef TYPE_3__ Labeldesc ;
typedef TYPE_4__ FuncState ;
typedef TYPE_5__ BlockCnt ;


 int findlabel (TYPE_9__*,int) ;
 int luaK_patchclose (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void movegotosout (FuncState *fs, BlockCnt *bl) {
  int i = bl->firstgoto;
  Labellist *gl = &fs->ls->dyd->gt;


  while (i < gl->n) {
    Labeldesc *gt = &gl->arr[i];
    if (gt->nactvar > bl->nactvar) {
      if (bl->upval)
        luaK_patchclose(fs, gt->pc, bl->nactvar);
      gt->nactvar = bl->nactvar;
    }
    if (!findlabel(fs->ls, i))
      i++;
  }
}
