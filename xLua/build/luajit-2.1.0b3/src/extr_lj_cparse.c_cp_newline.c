
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ c; int linenumber; int p; } ;
typedef TYPE_1__ CPState ;
typedef scalar_t__ CPChar ;


 scalar_t__ cp_iseol (scalar_t__) ;
 scalar_t__ cp_rawpeek (TYPE_1__*) ;

__attribute__((used)) static void cp_newline(CPState *cp)
{
  CPChar c = cp_rawpeek(cp);
  if (cp_iseol(c) && c != cp->c) cp->p++;
  cp->linenumber++;
}
