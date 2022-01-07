
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int name; } ;
typedef TYPE_3__ VarInfo ;
struct TYPE_11__ {int vtop; TYPE_3__* vstack; TYPE_2__* fs; } ;
struct TYPE_9__ {TYPE_1__* bl; } ;
struct TYPE_8__ {int vstart; } ;
typedef TYPE_4__ LexState ;
typedef int GCstr ;


 scalar_t__ gola_islabel (TYPE_3__*) ;
 int * strref (int ) ;

__attribute__((used)) static VarInfo *gola_findlabel(LexState *ls, GCstr *name)
{
  VarInfo *v = ls->vstack + ls->fs->bl->vstart;
  VarInfo *ve = ls->vstack + ls->vtop;
  for (; v < ve; v++)
    if (strref(v->name) == name && gola_islabel(v))
      return v;
  return ((void*)0);
}
