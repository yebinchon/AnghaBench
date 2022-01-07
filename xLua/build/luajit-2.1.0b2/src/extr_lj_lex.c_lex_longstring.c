
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int c; int L; int sb; } ;
typedef int TValue ;
typedef int MSize ;
typedef TYPE_1__ LexState ;
typedef int GCstr ;



 int LJ_ERR_XLCOM ;
 int LJ_ERR_XLSTR ;
 int TK_eof ;
 scalar_t__ lex_iseol (TYPE_1__*) ;
 int lex_newline (TYPE_1__*) ;
 int lex_save (TYPE_1__*,char) ;
 int lex_savenext (TYPE_1__*) ;
 int lex_skipeq (TYPE_1__*) ;
 int lj_buf_reset (int *) ;
 int lj_lex_error (TYPE_1__*,int ,int ) ;
 int * lj_parse_keepstr (TYPE_1__*,int,scalar_t__) ;
 int sbufB (int *) ;
 scalar_t__ sbuflen (int *) ;
 int setstrV (int ,int *,int *) ;

__attribute__((used)) static void lex_longstring(LexState *ls, TValue *tv, int sep)
{
  lex_savenext(ls);
  if (lex_iseol(ls))
    lex_newline(ls);
  for (;;) {
    switch (ls->c) {
    case 128:
      lj_lex_error(ls, TK_eof, tv ? LJ_ERR_XLSTR : LJ_ERR_XLCOM);
      break;
    case ']':
      if (lex_skipeq(ls) == sep) {
 lex_savenext(ls);
 goto endloop;
      }
      break;
    case '\n':
    case '\r':
      lex_save(ls, '\n');
      lex_newline(ls);
      if (!tv) lj_buf_reset(&ls->sb);
      break;
    default:
      lex_savenext(ls);
      break;
    }
  } endloop:
  if (tv) {
    GCstr *str = lj_parse_keepstr(ls, sbufB(&ls->sb) + (2 + (MSize)sep),
          sbuflen(&ls->sb) - 2*(2 + (MSize)sep));
    setstrV(ls->L, tv, str);
  }
}
