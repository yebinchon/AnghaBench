
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int c; int sb; int L; } ;
typedef int TValue ;
typedef TYPE_1__ LexState ;
typedef int LexChar ;



 int LJ_ERR_XESC ;
 int LJ_ERR_XSTR ;
 int TK_eof ;
 int TK_string ;
 int lex_iseol (TYPE_1__*) ;
 int lex_newline (TYPE_1__*) ;
 int lex_next (TYPE_1__*) ;
 int lex_save (TYPE_1__*,int) ;
 int lex_savenext (TYPE_1__*) ;
 int lj_char_isdigit (int) ;
 int lj_char_isspace (int) ;
 int lj_char_isxdigit (int) ;
 int lj_lex_error (TYPE_1__*,int ,int ) ;
 int lj_parse_keepstr (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ sbufB (int *) ;
 scalar_t__ sbuflen (int *) ;
 int setstrV (int ,int *,int ) ;

__attribute__((used)) static void lex_string(LexState *ls, TValue *tv)
{
  LexChar delim = ls->c;
  lex_savenext(ls);
  while (ls->c != delim) {
    switch (ls->c) {
    case 128:
      lj_lex_error(ls, TK_eof, LJ_ERR_XSTR);
      continue;
    case '\n':
    case '\r':
      lj_lex_error(ls, TK_string, LJ_ERR_XSTR);
      continue;
    case '\\': {
      LexChar c = lex_next(ls);
      switch (c) {
      case 'a': c = '\a'; break;
      case 'b': c = '\b'; break;
      case 'f': c = '\f'; break;
      case 'n': c = '\n'; break;
      case 'r': c = '\r'; break;
      case 't': c = '\t'; break;
      case 'v': c = '\v'; break;
      case 'x':
 c = (lex_next(ls) & 15u) << 4;
 if (!lj_char_isdigit(ls->c)) {
   if (!lj_char_isxdigit(ls->c)) goto err_xesc;
   c += 9 << 4;
 }
 c += (lex_next(ls) & 15u);
 if (!lj_char_isdigit(ls->c)) {
   if (!lj_char_isxdigit(ls->c)) goto err_xesc;
   c += 9;
 }
 break;
      case 'u':
 if (lex_next(ls) != '{') goto err_xesc;
 lex_next(ls);
 c = 0;
 do {
   c = (c << 4) | (ls->c & 15u);
   if (!lj_char_isdigit(ls->c)) {
     if (!lj_char_isxdigit(ls->c)) goto err_xesc;
     c += 9;
   }
   if (c >= 0x110000) goto err_xesc;
 } while (lex_next(ls) != '}');
 if (c < 0x800) {
   if (c < 0x80) break;
   lex_save(ls, 0xc0 | (c >> 6));
 } else {
   if (c >= 0x10000) {
     lex_save(ls, 0xf0 | (c >> 18));
     lex_save(ls, 0x80 | ((c >> 12) & 0x3f));
   } else {
     if (c >= 0xd800 && c < 0xe000) goto err_xesc;
     lex_save(ls, 0xe0 | (c >> 12));
   }
   lex_save(ls, 0x80 | ((c >> 6) & 0x3f));
 }
 c = 0x80 | (c & 0x3f);
 break;
      case 'z':
 lex_next(ls);
 while (lj_char_isspace(ls->c))
   if (lex_iseol(ls)) lex_newline(ls); else lex_next(ls);
 continue;
      case '\n': case '\r': lex_save(ls, '\n'); lex_newline(ls); continue;
      case '\\': case '\"': case '\'': break;
      case 128: continue;
      default:
 if (!lj_char_isdigit(c))
   goto err_xesc;
 c -= '0';
 if (lj_char_isdigit(lex_next(ls))) {
   c = c*10 + (ls->c - '0');
   if (lj_char_isdigit(lex_next(ls))) {
     c = c*10 + (ls->c - '0');
     if (c > 255) {
     err_xesc:
       lj_lex_error(ls, TK_string, LJ_ERR_XESC);
     }
     lex_next(ls);
   }
 }
 lex_save(ls, c);
 continue;
      }
      lex_save(ls, c);
      lex_next(ls);
      continue;
      }
    default:
      lex_savenext(ls);
      break;
    }
  }
  lex_savenext(ls);
  setstrV(ls->L, tv,
   lj_parse_keepstr(ls, sbufB(&ls->sb)+1, sbuflen(&ls->sb)-2));
}
