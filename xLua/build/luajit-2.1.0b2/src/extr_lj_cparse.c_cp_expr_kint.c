
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int cts; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {int info; } ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CPValue ;
typedef TYPE_3__ CPState ;


 int LJ_ERR_BADVAL ;
 int cp_err (TYPE_3__*,int ) ;
 int cp_expr_sub (TYPE_3__*,TYPE_2__*,int ) ;
 int ctype_isinteger (int ) ;
 TYPE_1__* ctype_raw (int ,int ) ;

__attribute__((used)) static void cp_expr_kint(CPState *cp, CPValue *k)
{
  CType *ct;
  cp_expr_sub(cp, k, 0);
  ct = ctype_raw(cp->cts, k->id);
  if (!ctype_isinteger(ct->info)) cp_err(cp, LJ_ERR_BADVAL);
}
