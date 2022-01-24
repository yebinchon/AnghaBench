#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
typedef  double lua_Number ;
typedef  int int32_t ;
struct TYPE_10__ {double n; int i; int /*<<< orphan*/  u64; } ;
typedef  TYPE_1__ TValue ;
typedef  scalar_t__ StrScanFmt ;

/* Variables and functions */
 int LJ_CHAR_DIGIT ; 
 int LJ_CHAR_XDIGIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
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
 scalar_t__ FUNC2 (char const,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char const,int) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 int FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC11 (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC12 (char const*,TYPE_1__*,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC13 (char const*,TYPE_1__*,scalar_t__,int,int) ; 

StrScanFmt FUNC14(const uint8_t *p, TValue *o, uint32_t opt)
{
  int32_t neg = 0;

  /* Remove leading space, parse sign and non-numbers. */
  if (FUNC1(!FUNC4(*p))) {
    while (FUNC5(*p)) p++;
    if (*p == '+' || *p == '-') neg = (*p++ == '-');
    if (FUNC1(*p >= 'A')) {  /* Parse "inf", "infinity" or "nan". */
      TValue tmp;
      FUNC8(&tmp);
      if (FUNC2(p[0],'i') && FUNC2(p[1],'n') && FUNC2(p[2],'f')) {
	if (neg) FUNC7(&tmp); else FUNC9(&tmp);
	p += 3;
	if (FUNC2(p[0],'i') && FUNC2(p[1],'n') && FUNC2(p[2],'i') &&
	    FUNC2(p[3],'t') && FUNC2(p[4],'y')) p += 5;
      } else if (FUNC2(p[0],'n') && FUNC2(p[1],'a') && FUNC2(p[2],'n')) {
	p += 3;
      }
      while (FUNC5(*p)) p++;
      if (*p) return STRSCAN_ERROR;
      o->u64 = tmp.u64;
      return STRSCAN_NUM;
    }
  }

  /* Parse regular number. */
  {
    StrScanFmt fmt = STRSCAN_INT;
    int cmask = LJ_CHAR_DIGIT;
    int base = (opt & STRSCAN_OPT_C) && *p == '0' ? 0 : 10;
    const uint8_t *sp, *dp = NULL;
    uint32_t dig = 0, hasdig = 0, x = 0;
    int32_t ex = 0;

    /* Determine base and skip leading zeros. */
    if (FUNC1(*p <= '0')) {
      if (*p == '0') {
	if (FUNC2(p[1], 'x'))
	  base = 16, cmask = LJ_CHAR_XDIGIT, p += 2;
	else if (FUNC2(p[1], 'b'))
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

    /* Preliminary digit and decimal point scan. */
    for (sp = p; ; p++) {
      if (FUNC0(FUNC3(*p, cmask))) {
	x = x * 10 + (*p & 15);  /* For fast path below. */
	dig++;
      } else if (*p == '.') {
	if (dp) return STRSCAN_ERROR;
	dp = p;
      } else {
	break;
      }
    }
    if (!(hasdig | dig)) return STRSCAN_ERROR;

    /* Handle decimal point. */
    if (dp) {
      fmt = STRSCAN_NUM;
      if (dig) {
	ex = (int32_t)(dp-(p-1)); dp = p-1;
	while (ex < 0 && *dp-- == '0') ex++, dig--;  /* Skip trailing zeros. */
	if (base == 16) ex *= 4;
      }
    }

    /* Parse exponent. */
    if (base >= 10 && FUNC2(*p, (uint32_t)(base == 16 ? 'p' : 'e'))) {
      uint32_t xx;
      int negx = 0;
      fmt = STRSCAN_NUM; p++;
      if (*p == '+' || *p == '-') negx = (*p++ == '-');
      if (!FUNC4(*p)) return STRSCAN_ERROR;
      xx = (*p++ & 15);
      while (FUNC4(*p)) {
	if (xx < 65536) xx = xx * 10 + (*p & 15);
	p++;
      }
      ex += negx ? -(int32_t)xx : (int32_t)xx;
    }

    /* Parse suffix. */
    if (*p) {
      /* I (IMAG), U (U32), LL (I64), ULL/LLU (U64), L (long), UL/LU (ulong). */
      /* NYI: f (float). Not needed until cp_number() handles non-integers. */
      if (FUNC2(*p, 'i')) {
	if (!(opt & STRSCAN_OPT_IMAG)) return STRSCAN_ERROR;
	p++; fmt = STRSCAN_IMAG;
      } else if (fmt == STRSCAN_INT) {
	if (FUNC2(*p, 'u')) p++, fmt = STRSCAN_U32;
	if (FUNC2(*p, 'l')) {
	  p++;
	  if (FUNC2(*p, 'l')) p++, fmt += STRSCAN_I64 - STRSCAN_INT;
	  else if (!(opt & STRSCAN_OPT_C)) return STRSCAN_ERROR;
	  else if (sizeof(long) == 8) fmt += STRSCAN_I64 - STRSCAN_INT;
	}
	if (FUNC2(*p, 'u') && (fmt == STRSCAN_INT || fmt == STRSCAN_I64))
	  p++, fmt += STRSCAN_U32 - STRSCAN_INT;
	if ((fmt == STRSCAN_U32 && !(opt & STRSCAN_OPT_C)) ||
	    (fmt >= STRSCAN_I64 && !(opt & STRSCAN_OPT_LL)))
	  return STRSCAN_ERROR;
      }
      while (FUNC5(*p)) p++;
      if (*p) return STRSCAN_ERROR;
    }

    /* Fast path for decimal 32 bit integers. */
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

    /* Dispatch to base-specific parser. */
    if (base == 0 && !(fmt == STRSCAN_NUM || fmt == STRSCAN_IMAG))
      return FUNC13(sp, o, fmt, neg, dig);
    if (base == 16)
      fmt = FUNC12(sp, o, fmt, opt, ex, neg, dig);
    else if (base == 2)
      fmt = FUNC10(sp, o, fmt, opt, ex, neg, dig);
    else
      fmt = FUNC11(sp, o, fmt, opt, ex, neg, dig);

    /* Try to convert number to integer, if requested. */
    if (fmt == STRSCAN_NUM && (opt & STRSCAN_OPT_TOINT)) {
      double n = o->n;
      int32_t i = FUNC6(n);
      if (n == (lua_Number)i) { o->i = i; return STRSCAN_INT; }
    }
    return fmt;
  }
}