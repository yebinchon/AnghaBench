
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef scalar_t__ CPToken ;
typedef TYPE_1__ CPState ;


 scalar_t__ CTOK_FIRSTDECL ;
 scalar_t__ CTOK_OFS ;
 char const** ctoknames ;
 int lj_char_iscntrl (scalar_t__) ;
 char const* lj_strfmt_pushf (int ,char*,scalar_t__) ;
 int lua_assert (int) ;

__attribute__((used)) static const char *cp_tok2str(CPState *cp, CPToken tok)
{
  lua_assert(tok < CTOK_FIRSTDECL);
  if (tok > CTOK_OFS)
    return ctoknames[tok-CTOK_OFS-1];
  else if (!lj_char_iscntrl(tok))
    return lj_strfmt_pushf(cp->L, "%c", tok);
  else
    return lj_strfmt_pushf(cp->L, "char(%d)", tok);
}
