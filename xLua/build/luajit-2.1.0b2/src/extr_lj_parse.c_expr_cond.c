
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ k; int f; } ;
struct TYPE_7__ {int fs; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ ExpDesc ;
typedef int BCPos ;


 scalar_t__ VKFALSE ;
 scalar_t__ VKNIL ;
 int bcemit_branch_t (int ,TYPE_2__*) ;
 int expr (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static BCPos expr_cond(LexState *ls)
{
  ExpDesc v;
  expr(ls, &v);
  if (v.k == VKNIL) v.k = VKFALSE;
  bcemit_branch_t(ls->fs, &v);
  return v.f;
}
