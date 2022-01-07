
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int c; int sb; } ;
typedef char CPToken ;
typedef TYPE_1__ CPState ;


 char CTOK_ANDAND ;
 char CTOK_DEREF ;
 char CTOK_EOF ;
 char CTOK_EQ ;
 char CTOK_GE ;
 char CTOK_LE ;
 char CTOK_NE ;
 char CTOK_OROR ;
 char CTOK_SHL ;
 char CTOK_SHR ;
 int cp_comment_c (TYPE_1__*) ;
 int cp_comment_cpp (TYPE_1__*) ;
 char cp_get (TYPE_1__*) ;
 char cp_ident (TYPE_1__*) ;
 int cp_newline (TYPE_1__*) ;
 char cp_number (TYPE_1__*) ;
 char cp_param (TYPE_1__*) ;
 char cp_string (TYPE_1__*) ;
 int lj_buf_reset (int *) ;
 scalar_t__ lj_char_isdigit (int) ;
 scalar_t__ lj_char_isident (int) ;

__attribute__((used)) static CPToken cp_next_(CPState *cp)
{
  lj_buf_reset(&cp->sb);
  for (;;) {
    if (lj_char_isident(cp->c))
      return lj_char_isdigit(cp->c) ? cp_number(cp) : cp_ident(cp);
    switch (cp->c) {
    case '\n': case '\r': cp_newline(cp);
    case ' ': case '\t': case '\v': case '\f': cp_get(cp); break;
    case '"': case '\'': return cp_string(cp);
    case '/':
      if (cp_get(cp) == '*') cp_comment_c(cp);
      else if (cp->c == '/') cp_comment_cpp(cp);
      else return '/';
      break;
    case '|':
      if (cp_get(cp) != '|') return '|';
      cp_get(cp); return CTOK_OROR;
    case '&':
      if (cp_get(cp) != '&') return '&';
      cp_get(cp); return CTOK_ANDAND;
    case '=':
      if (cp_get(cp) != '=') return '=';
      cp_get(cp); return CTOK_EQ;
    case '!':
      if (cp_get(cp) != '=') return '!';
      cp_get(cp); return CTOK_NE;
    case '<':
      if (cp_get(cp) == '=') { cp_get(cp); return CTOK_LE; }
      else if (cp->c == '<') { cp_get(cp); return CTOK_SHL; }
      return '<';
    case '>':
      if (cp_get(cp) == '=') { cp_get(cp); return CTOK_GE; }
      else if (cp->c == '>') { cp_get(cp); return CTOK_SHR; }
      return '>';
    case '-':
      if (cp_get(cp) != '>') return '-';
      cp_get(cp); return CTOK_DEREF;
    case '$':
      return cp_param(cp);
    case '\0': return CTOK_EOF;
    default: { CPToken c = cp->c; cp_get(cp); return c; }
    }
  }
}
