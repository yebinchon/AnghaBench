
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int info; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_3__* ct; int tmask; int str; int cts; TYPE_1__ val; int sb; int L; int c; } ;
typedef int CPToken ;
typedef TYPE_2__ CPState ;


 int CTOK_IDENT ;
 scalar_t__ CT_KW ;
 int cp_get (TYPE_2__*) ;
 int cp_save (TYPE_2__*,int ) ;
 int ctype_cid (int ) ;
 scalar_t__ ctype_type (int ) ;
 int lj_buf_str (int ,int *) ;
 scalar_t__ lj_char_isident (int ) ;
 int lj_ctype_getname (int ,TYPE_3__**,int ,int ) ;

__attribute__((used)) static CPToken cp_ident(CPState *cp)
{
  do { cp_save(cp, cp->c); } while (lj_char_isident(cp_get(cp)));
  cp->str = lj_buf_str(cp->L, &cp->sb);
  cp->val.id = lj_ctype_getname(cp->cts, &cp->ct, cp->str, cp->tmask);
  if (ctype_type(cp->ct->info) == CT_KW)
    return ctype_cid(cp->ct->info);
  return CTOK_IDENT;
}
