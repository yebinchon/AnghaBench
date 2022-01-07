
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nactvar; int upval; struct TYPE_5__* previous; } ;
struct TYPE_4__ {TYPE_2__* bl; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ BlockCnt ;



__attribute__((used)) static void markupval (FuncState *fs, int level) {
  BlockCnt *bl = fs->bl;
  while (bl && bl->nactvar > level) bl = bl->previous;
  if (bl) bl->upval = 1;
}
