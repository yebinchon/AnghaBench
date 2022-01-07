
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char tok; TYPE_1__* ct; } ;
struct TYPE_4__ {int info; } ;
typedef TYPE_2__ CPState ;


 char CTOK_FIRSTDECL ;
 char CTOK_IDENT ;
 char CTOK_LASTDECL ;
 scalar_t__ ctype_istypedef (int ) ;

__attribute__((used)) static int cp_istypedecl(CPState *cp)
{
  if (cp->tok >= CTOK_FIRSTDECL && cp->tok <= CTOK_LASTDECL) return 1;
  if (cp->tok == CTOK_IDENT && ctype_istypedef(cp->ct->info)) return 1;
  if (cp->tok == '$') return 1;
  return 0;
}
