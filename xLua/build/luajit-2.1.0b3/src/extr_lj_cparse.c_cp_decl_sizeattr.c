
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int tmask; } ;
typedef int CTSize ;
typedef TYPE_1__ CPState ;


 int CPNS_DEFAULT ;
 int cp_check (TYPE_1__*,char) ;
 int cp_expr_ksize (TYPE_1__*) ;

__attribute__((used)) static CTSize cp_decl_sizeattr(CPState *cp)
{
  CTSize sz;
  uint32_t oldtmask = cp->tmask;
  cp->tmask = CPNS_DEFAULT;
  cp_check(cp, '(');
  sz = cp_expr_ksize(cp);
  cp->tmask = oldtmask;
  cp_check(cp, ')');
  return sz;
}
