
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {int id; scalar_t__ i32; } ;
struct TYPE_9__ {char c; TYPE_1__ val; int sb; int L; int str; } ;
typedef int CPToken ;
typedef TYPE_2__ CPState ;
typedef char CPChar ;


 int CTID_INT32 ;
 int CTOK_EOF ;
 int CTOK_INTEGER ;
 int CTOK_STRING ;
 int LJ_ERR_XSTR ;
 int cp_err_token (TYPE_2__*,char) ;
 int cp_errmsg (TYPE_2__*,int ,int ) ;
 char cp_get (TYPE_2__*) ;
 int cp_save (TYPE_2__*,char) ;
 int lj_buf_str (int ,int *) ;
 int lj_char_isdigit (char) ;
 int lj_char_isxdigit (char) ;
 scalar_t__* sbufB (int *) ;
 int sbuflen (int *) ;

__attribute__((used)) static CPToken cp_string(CPState *cp)
{
  CPChar delim = cp->c;
  cp_get(cp);
  while (cp->c != delim) {
    CPChar c = cp->c;
    if (c == '\0') cp_errmsg(cp, CTOK_EOF, LJ_ERR_XSTR);
    if (c == '\\') {
      c = cp_get(cp);
      switch (c) {
      case '\0': cp_errmsg(cp, CTOK_EOF, LJ_ERR_XSTR); break;
      case 'a': c = '\a'; break;
      case 'b': c = '\b'; break;
      case 'f': c = '\f'; break;
      case 'n': c = '\n'; break;
      case 'r': c = '\r'; break;
      case 't': c = '\t'; break;
      case 'v': c = '\v'; break;
      case 'e': c = 27; break;
      case 'x':
 c = 0;
 while (lj_char_isxdigit(cp_get(cp)))
   c = (c<<4) + (lj_char_isdigit(cp->c) ? cp->c-'0' : (cp->c&15)+9);
 cp_save(cp, (c & 0xff));
 continue;
      default:
 if (lj_char_isdigit(c)) {
   c -= '0';
   if (lj_char_isdigit(cp_get(cp))) {
     c = c*8 + (cp->c - '0');
     if (lj_char_isdigit(cp_get(cp))) {
       c = c*8 + (cp->c - '0');
       cp_get(cp);
     }
   }
   cp_save(cp, (c & 0xff));
   continue;
 }
 break;
      }
    }
    cp_save(cp, c);
    cp_get(cp);
  }
  cp_get(cp);
  if (delim == '"') {
    cp->str = lj_buf_str(cp->L, &cp->sb);
    return CTOK_STRING;
  } else {
    if (sbuflen(&cp->sb) != 1) cp_err_token(cp, '\'');
    cp->val.i32 = (int32_t)(char)*sbufB(&cp->sb);
    cp->val.id = CTID_INT32;
    return CTOK_INTEGER;
  }
}
