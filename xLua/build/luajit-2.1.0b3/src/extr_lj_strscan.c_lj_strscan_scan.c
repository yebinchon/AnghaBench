
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
typedef double lua_Number ;
typedef int int32_t ;
struct TYPE_10__ {double n; int i; int u64; } ;
typedef TYPE_1__ TValue ;
typedef scalar_t__ StrScanFmt ;


 int LJ_CHAR_DIGIT ;
 int LJ_CHAR_XDIGIT ;
 scalar_t__ LJ_LIKELY (int ) ;
 scalar_t__ LJ_UNLIKELY (int) ;
 scalar_t__ STRSCAN_ERROR ;
 scalar_t__ STRSCAN_I64 ;
 scalar_t__ STRSCAN_IMAG ;
 scalar_t__ STRSCAN_INT ;
 scalar_t__ STRSCAN_NUM ;
 int STRSCAN_OPT_C ;
 int STRSCAN_OPT_IMAG ;
 int STRSCAN_OPT_LL ;
 int STRSCAN_OPT_TOINT ;
 int STRSCAN_OPT_TONUM ;
 scalar_t__ STRSCAN_U32 ;
 scalar_t__ casecmp (char const,unsigned char) ;
 int lj_char_isa (char const,int) ;
 scalar_t__ lj_char_isdigit (char const) ;
 scalar_t__ lj_char_isspace (char const) ;
 int lj_num2int (double) ;
 int setminfV (TYPE_1__*) ;
 int setnanV (TYPE_1__*) ;
 int setpinfV (TYPE_1__*) ;
 scalar_t__ strscan_bin (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ;
 scalar_t__ strscan_dec (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ;
 scalar_t__ strscan_hex (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ;
 scalar_t__ strscan_oct (char const*,TYPE_1__*,scalar_t__,int,int) ;

StrScanFmt lj_strscan_scan(const uint8_t *p, TValue *o, uint32_t opt)
{
  int32_t neg = 0;


  if (LJ_UNLIKELY(!lj_char_isdigit(*p))) {
    while (lj_char_isspace(*p)) p++;
    if (*p == '+' || *p == '-') neg = (*p++ == '-');
    if (LJ_UNLIKELY(*p >= 'A')) {
      TValue tmp;
      setnanV(&tmp);
      if (casecmp(p[0],'i') && casecmp(p[1],'n') && casecmp(p[2],'f')) {
 if (neg) setminfV(&tmp); else setpinfV(&tmp);
 p += 3;
 if (casecmp(p[0],'i') && casecmp(p[1],'n') && casecmp(p[2],'i') &&
     casecmp(p[3],'t') && casecmp(p[4],'y')) p += 5;
      } else if (casecmp(p[0],'n') && casecmp(p[1],'a') && casecmp(p[2],'n')) {
 p += 3;
      }
      while (lj_char_isspace(*p)) p++;
      if (*p) return STRSCAN_ERROR;
      o->u64 = tmp.u64;
      return STRSCAN_NUM;
    }
  }


  {
    StrScanFmt fmt = STRSCAN_INT;
    int cmask = LJ_CHAR_DIGIT;
    int base = (opt & STRSCAN_OPT_C) && *p == '0' ? 0 : 10;
    const uint8_t *sp, *dp = ((void*)0);
    uint32_t dig = 0, hasdig = 0, x = 0;
    int32_t ex = 0;


    if (LJ_UNLIKELY(*p <= '0')) {
      if (*p == '0') {
 if (casecmp(p[1], 'x'))
   base = 16, cmask = LJ_CHAR_XDIGIT, p += 2;
 else if (casecmp(p[1], 'b'))
   base = 2, cmask = LJ_CHAR_DIGIT, p += 2;
      }
      for ( ; ; p++) {
 if (*p == '0') {
   hasdig = 1;
 } else if (*p == '.') {
   if (dp) return STRSCAN_ERROR;
   dp = p;
 } else {
   break;
 }
      }
    }


    for (sp = p; ; p++) {
      if (LJ_LIKELY(lj_char_isa(*p, cmask))) {
 x = x * 10 + (*p & 15);
 dig++;
      } else if (*p == '.') {
 if (dp) return STRSCAN_ERROR;
 dp = p;
      } else {
 break;
      }
    }
    if (!(hasdig | dig)) return STRSCAN_ERROR;


    if (dp) {
      fmt = STRSCAN_NUM;
      if (dig) {
 ex = (int32_t)(dp-(p-1)); dp = p-1;
 while (ex < 0 && *dp-- == '0') ex++, dig--;
 if (base == 16) ex *= 4;
      }
    }


    if (base >= 10 && casecmp(*p, (uint32_t)(base == 16 ? 'p' : 'e'))) {
      uint32_t xx;
      int negx = 0;
      fmt = STRSCAN_NUM; p++;
      if (*p == '+' || *p == '-') negx = (*p++ == '-');
      if (!lj_char_isdigit(*p)) return STRSCAN_ERROR;
      xx = (*p++ & 15);
      while (lj_char_isdigit(*p)) {
 if (xx < 65536) xx = xx * 10 + (*p & 15);
 p++;
      }
      ex += negx ? -(int32_t)xx : (int32_t)xx;
    }


    if (*p) {


      if (casecmp(*p, 'i')) {
 if (!(opt & STRSCAN_OPT_IMAG)) return STRSCAN_ERROR;
 p++; fmt = STRSCAN_IMAG;
      } else if (fmt == STRSCAN_INT) {
 if (casecmp(*p, 'u')) p++, fmt = STRSCAN_U32;
 if (casecmp(*p, 'l')) {
   p++;
   if (casecmp(*p, 'l')) p++, fmt += STRSCAN_I64 - STRSCAN_INT;
   else if (!(opt & STRSCAN_OPT_C)) return STRSCAN_ERROR;
   else if (sizeof(long) == 8) fmt += STRSCAN_I64 - STRSCAN_INT;
 }
 if (casecmp(*p, 'u') && (fmt == STRSCAN_INT || fmt == STRSCAN_I64))
   p++, fmt += STRSCAN_U32 - STRSCAN_INT;
 if ((fmt == STRSCAN_U32 && !(opt & STRSCAN_OPT_C)) ||
     (fmt >= STRSCAN_I64 && !(opt & STRSCAN_OPT_LL)))
   return STRSCAN_ERROR;
      }
      while (lj_char_isspace(*p)) p++;
      if (*p) return STRSCAN_ERROR;
    }


    if (fmt == STRSCAN_INT && base == 10 &&
 (dig < 10 || (dig == 10 && *sp <= '2' && x < 0x80000000u+neg))) {
      int32_t y = neg ? -(int32_t)x : (int32_t)x;
      if ((opt & STRSCAN_OPT_TONUM)) {
 o->n = (double)y;
 return STRSCAN_NUM;
      } else {
 o->i = y;
 return STRSCAN_INT;
      }
    }


    if (base == 0 && !(fmt == STRSCAN_NUM || fmt == STRSCAN_IMAG))
      return strscan_oct(sp, o, fmt, neg, dig);
    if (base == 16)
      fmt = strscan_hex(sp, o, fmt, opt, ex, neg, dig);
    else if (base == 2)
      fmt = strscan_bin(sp, o, fmt, opt, ex, neg, dig);
    else
      fmt = strscan_dec(sp, o, fmt, opt, ex, neg, dig);


    if (fmt == STRSCAN_NUM && (opt & STRSCAN_OPT_TOINT)) {
      double n = o->n;
      int32_t i = lj_num2int(n);
      if (n == (lua_Number)i) { o->i = i; return STRSCAN_INT; }
    }
    return fmt;
  }
}
