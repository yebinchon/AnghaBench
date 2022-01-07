
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int codesize; } ;
struct TYPE_4__ {int ncode; TYPE_2__* p; int L; } ;
typedef TYPE_1__ CompileState ;


 int realloccode (int ,TYPE_2__*,int) ;

__attribute__((used)) static int nextinstruction (CompileState *compst) {
  int size = compst->p->codesize;
  if (compst->ncode >= size)
    realloccode(compst->L, compst->p, size * 2);
  return compst->ncode++;
}
