
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tok; } ;
typedef scalar_t__ CPToken ;
typedef TYPE_1__ CPState ;


 int cp_next (TYPE_1__*) ;

__attribute__((used)) static int cp_opt(CPState *cp, CPToken tok)
{
  if (cp->tok == tok) { cp_next(cp); return 1; }
  return 0;
}
