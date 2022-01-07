
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ level; } ;
typedef TYPE_1__ LexState ;


 int LJ_ERR_XLEVELS ;
 scalar_t__ LJ_MAX_XLEVEL ;
 int lj_lex_error (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void synlevel_begin(LexState *ls)
{
  if (++ls->level >= LJ_MAX_XLEVEL)
    lj_lex_error(ls, 0, LJ_ERR_XLEVELS);
}
