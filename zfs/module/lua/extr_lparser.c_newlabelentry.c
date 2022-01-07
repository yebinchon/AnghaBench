
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int line; int pc; int nactvar; int * name; } ;
struct TYPE_9__ {int n; TYPE_6__* arr; int size; } ;
struct TYPE_8__ {TYPE_1__* fs; int L; } ;
struct TYPE_7__ {int nactvar; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ Labellist ;


 int Labeldesc ;
 int SHRT_MAX ;
 int luaM_growvector (int ,TYPE_6__*,int,int ,int ,int ,char*) ;

__attribute__((used)) static int newlabelentry (LexState *ls, Labellist *l, TString *name,
                          int line, int pc) {
  int n = l->n;
  luaM_growvector(ls->L, l->arr, n, l->size,
                  Labeldesc, SHRT_MAX, "labels/gotos");
  l->arr[n].name = name;
  l->arr[n].line = line;
  l->arr[n].nactvar = ls->fs->nactvar;
  l->arr[n].pc = pc;
  l->n++;
  return n;
}
