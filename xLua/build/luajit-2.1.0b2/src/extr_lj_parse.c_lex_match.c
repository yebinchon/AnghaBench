
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ linenumber; int tok; } ;
typedef int LexToken ;
typedef TYPE_1__ LexState ;
typedef scalar_t__ BCLine ;


 int LJ_ERR_XMATCH ;
 int err_token (TYPE_1__*,int ) ;
 int lex_opt (TYPE_1__*,int ) ;
 int lj_lex_error (TYPE_1__*,int ,int ,char const*,char const*,scalar_t__) ;
 char* lj_lex_token2str (TYPE_1__*,int ) ;

__attribute__((used)) static void lex_match(LexState *ls, LexToken what, LexToken who, BCLine line)
{
  if (!lex_opt(ls, what)) {
    if (line == ls->linenumber) {
      err_token(ls, what);
    } else {
      const char *swhat = lj_lex_token2str(ls, what);
      const char *swho = lj_lex_token2str(ls, who);
      lj_lex_error(ls, ls->tok, LJ_ERR_XMATCH, swhat, swho, line);
    }
  }
}
