
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ reserved; } ;
struct TYPE_16__ {int c; int sb; int L; } ;
typedef int TValue ;
typedef char LexToken ;
typedef TYPE_1__ LexState ;
typedef char LexChar ;
typedef TYPE_2__ GCstr ;



 int LJ_ERR_XLDELIM ;
 char TK_OFS ;
 char TK_concat ;
 char TK_dots ;
 char TK_eof ;
 char TK_eq ;
 char TK_ge ;
 char TK_label ;
 char TK_le ;
 char TK_name ;
 char TK_ne ;
 char TK_number ;
 char TK_string ;
 int lex_iseol (TYPE_1__*) ;
 int lex_longstring (TYPE_1__*,int *,int) ;
 int lex_newline (TYPE_1__*) ;
 int lex_next (TYPE_1__*) ;
 int lex_number (TYPE_1__*,int *) ;
 char lex_savenext (TYPE_1__*) ;
 int lex_skipeq (TYPE_1__*) ;
 int lex_string (TYPE_1__*,int *) ;
 int lj_buf_reset (int *) ;
 scalar_t__ lj_char_isdigit (int) ;
 scalar_t__ lj_char_isident (int) ;
 int lj_lex_error (TYPE_1__*,char,int ) ;
 TYPE_2__* lj_parse_keepstr (TYPE_1__*,int ,int ) ;
 int sbufB (int *) ;
 int sbuflen (int *) ;
 int setstrV (int ,int *,TYPE_2__*) ;

__attribute__((used)) static LexToken lex_scan(LexState *ls, TValue *tv)
{
  lj_buf_reset(&ls->sb);
  for (;;) {
    if (lj_char_isident(ls->c)) {
      GCstr *s;
      if (lj_char_isdigit(ls->c)) {
 lex_number(ls, tv);
 return TK_number;
      }

      do {
 lex_savenext(ls);
      } while (lj_char_isident(ls->c));
      s = lj_parse_keepstr(ls, sbufB(&ls->sb), sbuflen(&ls->sb));
      setstrV(ls->L, tv, s);
      if (s->reserved > 0)
 return TK_OFS + s->reserved;
      return TK_name;
    }
    switch (ls->c) {
    case '\n':
    case '\r':
      lex_newline(ls);
      continue;
    case ' ':
    case '\t':
    case '\v':
    case '\f':
      lex_next(ls);
      continue;
    case '-':
      lex_next(ls);
      if (ls->c != '-') return '-';
      lex_next(ls);
      if (ls->c == '[') {
 int sep = lex_skipeq(ls);
 lj_buf_reset(&ls->sb);
 if (sep >= 0) {
   lex_longstring(ls, ((void*)0), sep);
   lj_buf_reset(&ls->sb);
   continue;
 }
      }

      while (!lex_iseol(ls) && ls->c != 128)
 lex_next(ls);
      continue;
    case '[': {
      int sep = lex_skipeq(ls);
      if (sep >= 0) {
 lex_longstring(ls, tv, sep);
 return TK_string;
      } else if (sep == -1) {
 return '[';
      } else {
 lj_lex_error(ls, TK_string, LJ_ERR_XLDELIM);
 continue;
      }
      }
    case '=':
      lex_next(ls);
      if (ls->c != '=') return '='; else { lex_next(ls); return TK_eq; }
    case '<':
      lex_next(ls);
      if (ls->c != '=') return '<'; else { lex_next(ls); return TK_le; }
    case '>':
      lex_next(ls);
      if (ls->c != '=') return '>'; else { lex_next(ls); return TK_ge; }
    case '~':
      lex_next(ls);
      if (ls->c != '=') return '~'; else { lex_next(ls); return TK_ne; }
    case ':':
      lex_next(ls);
      if (ls->c != ':') return ':'; else { lex_next(ls); return TK_label; }
    case '"':
    case '\'':
      lex_string(ls, tv);
      return TK_string;
    case '.':
      if (lex_savenext(ls) == '.') {
 lex_next(ls);
 if (ls->c == '.') {
   lex_next(ls);
   return TK_dots;
 }
 return TK_concat;
      } else if (!lj_char_isdigit(ls->c)) {
 return '.';
      } else {
 lex_number(ls, tv);
 return TK_number;
      }
    case 128:
      return TK_eof;
    default: {
      LexChar c = ls->c;
      lex_next(ls);
      return c;
    }
    }
  }
}
