
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int top; } ;
struct TYPE_10__ {int * redir; } ;
struct TYPE_9__ {scalar_t__ tok; TYPE_3__* L; int * str; } ;
typedef int GCstr ;
typedef TYPE_1__ CPState ;
typedef TYPE_2__ CPDecl ;


 scalar_t__ CTOK_STRING ;
 int UNUSED (TYPE_2__*) ;
 int cp_check (TYPE_1__*,char) ;
 scalar_t__ cp_next (TYPE_1__*) ;
 int lj_strfmt_pushf (TYPE_3__*,char*,int ,int ) ;
 int * strV (int ) ;
 int strdata (int *) ;

__attribute__((used)) static void cp_decl_asm(CPState *cp, CPDecl *decl)
{
  UNUSED(decl);
  cp_next(cp);
  cp_check(cp, '(');
  if (cp->tok == CTOK_STRING) {
    GCstr *str = cp->str;
    while (cp_next(cp) == CTOK_STRING) {
      lj_strfmt_pushf(cp->L, "%s%s", strdata(str), strdata(cp->str));
      cp->L->top--;
      str = strV(cp->L->top);
    }
    decl->redir = str;
  }
  cp_check(cp, ')');
}
