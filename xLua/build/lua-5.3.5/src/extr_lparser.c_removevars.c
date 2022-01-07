
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int endpc; } ;
struct TYPE_11__ {int nactvar; int pc; TYPE_3__* ls; } ;
struct TYPE_10__ {TYPE_2__* dyd; } ;
struct TYPE_8__ {int n; } ;
struct TYPE_9__ {TYPE_1__ actvar; } ;
typedef TYPE_4__ FuncState ;


 TYPE_6__* getlocvar (TYPE_4__*,int) ;

__attribute__((used)) static void removevars (FuncState *fs, int tolevel) {
  fs->ls->dyd->actvar.n -= (fs->nactvar - tolevel);
  while (fs->nactvar > tolevel)
    getlocvar(fs, --fs->nactvar)->endpc = fs->pc;
}
