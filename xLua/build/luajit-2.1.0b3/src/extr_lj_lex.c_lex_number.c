
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;
struct TYPE_19__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_21__ {int c; TYPE_1__* L; int sb; } ;
struct TYPE_20__ {int u64; } ;
typedef TYPE_2__ TValue ;
typedef scalar_t__ StrScanFmt ;
typedef TYPE_3__ LexState ;
typedef int LexChar ;
typedef int GCcdata ;


 int CTID_COMPLEX_DOUBLE ;
 int CTID_INT64 ;
 int CTID_UINT64 ;
 int G (TYPE_1__*) ;
 scalar_t__ LJ_DUALNUM ;
 int LJ_ERR_XNUMBER ;
 scalar_t__ LJ_HASFFI ;
 int LJ_TISNUM ;
 scalar_t__ STRSCAN_ERROR ;
 scalar_t__ STRSCAN_I64 ;
 scalar_t__ STRSCAN_IMAG ;
 scalar_t__ STRSCAN_INT ;
 scalar_t__ STRSCAN_NUM ;
 int STRSCAN_OPT_IMAG ;
 int STRSCAN_OPT_LL ;
 int STRSCAN_OPT_TOINT ;
 int STRSCAN_OPT_TONUM ;
 scalar_t__ STRSCAN_U64 ;
 int TK_number ;
 scalar_t__ cdataptr (int *) ;
 int ctype_ctsG (int ) ;
 int lex_save (TYPE_3__*,char) ;
 int lex_savenext (TYPE_3__*) ;
 int * lj_cdata_new_ (TYPE_1__*,int ,int) ;
 int lj_char_isdigit (int) ;
 scalar_t__ lj_char_isident (int) ;
 int lj_lex_error (TYPE_3__*,int ,int ) ;
 int lj_parse_keepcdata (TYPE_3__*,TYPE_2__*,int *) ;
 scalar_t__ lj_strscan_scan (int const*,TYPE_2__*,int) ;
 int lua_assert (int) ;
 int luaopen_ffi (TYPE_1__*) ;
 double numV (TYPE_2__*) ;
 int restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int ) ;
 scalar_t__ sbufB (int *) ;
 int setitype (TYPE_2__*,int ) ;

__attribute__((used)) static void lex_number(LexState *ls, TValue *tv)
{
  StrScanFmt fmt;
  LexChar c, xp = 'e';
  lua_assert(lj_char_isdigit(ls->c));
  if ((c = ls->c) == '0' && (lex_savenext(ls) | 0x20) == 'x')
    xp = 'p';
  while (lj_char_isident(ls->c) || ls->c == '.' ||
  ((ls->c == '-' || ls->c == '+') && (c | 0x20) == xp)) {
    c = ls->c;
    lex_savenext(ls);
  }
  lex_save(ls, '\0');
  fmt = lj_strscan_scan((const uint8_t *)sbufB(&ls->sb), tv,
   (LJ_DUALNUM ? STRSCAN_OPT_TOINT : STRSCAN_OPT_TONUM) |
   (LJ_HASFFI ? (STRSCAN_OPT_LL|STRSCAN_OPT_IMAG) : 0));
  if (LJ_DUALNUM && fmt == STRSCAN_INT) {
    setitype(tv, LJ_TISNUM);
  } else if (fmt == STRSCAN_NUM) {
  } else {
    lua_assert(fmt == STRSCAN_ERROR);
    lj_lex_error(ls, TK_number, LJ_ERR_XNUMBER);
  }
}
