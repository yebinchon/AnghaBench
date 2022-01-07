
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ u32; } ;
struct TYPE_6__ {scalar_t__ tok; scalar_t__ linenumber; TYPE_1__ val; } ;
typedef TYPE_2__ CPState ;
typedef scalar_t__ BCLine ;


 scalar_t__ CTOK_EOF ;
 int cp_next (TYPE_2__*) ;

__attribute__((used)) static void cp_line(CPState *cp, BCLine hashline)
{
  BCLine newline = cp->val.u32;

  while (cp->tok != CTOK_EOF && cp->linenumber == hashline)
    cp_next(cp);
  cp->linenumber = newline;
}
