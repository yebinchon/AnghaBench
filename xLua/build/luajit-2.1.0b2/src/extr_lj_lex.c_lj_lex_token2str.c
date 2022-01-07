
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef scalar_t__ LexToken ;
typedef TYPE_1__ LexState ;


 scalar_t__ TK_OFS ;
 int lj_char_iscntrl (scalar_t__) ;
 char const* lj_strfmt_pushf (int ,char*,scalar_t__) ;
 char const** tokennames ;

const char *lj_lex_token2str(LexState *ls, LexToken tok)
{
  if (tok > TK_OFS)
    return tokennames[tok-TK_OFS-1];
  else if (!lj_char_iscntrl(tok))
    return lj_strfmt_pushf(ls->L, "%c", tok);
  else
    return lj_strfmt_pushf(ls->L, "char(%d)", tok);
}
