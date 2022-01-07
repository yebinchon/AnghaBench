
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_6__ {int i; int u64; double n; } ;
typedef TYPE_1__ TValue ;
typedef int StrScanFmt ;


 int DLEN (int,int) ;
 int DNEXT (int) ;
 size_t DPREV (int) ;
 int STRSCAN_DDIG ;
 int STRSCAN_ERROR ;


 int STRSCAN_MAXDIG ;
 int STRSCAN_NUM ;
 int STRSCAN_OPT_C ;
 int STRSCAN_OPT_TONUM ;


 int lua_assert (int) ;
 int setminfV (TYPE_1__*) ;
 int setpinfV (TYPE_1__*) ;
 int strscan_double (int,TYPE_1__*,int,int) ;

__attribute__((used)) static StrScanFmt strscan_dec(const uint8_t *p, TValue *o,
         StrScanFmt fmt, uint32_t opt,
         int32_t ex10, int32_t neg, uint32_t dig)
{
  uint8_t xi[STRSCAN_DDIG], *xip = xi;

  if (dig) {
    uint32_t i = dig;
    if (i > STRSCAN_MAXDIG) {
      ex10 += (int32_t)(i - STRSCAN_MAXDIG);
      i = STRSCAN_MAXDIG;
    }

    if (((ex10^i) & 1))
      *xip++ = ((*p != '.' ? *p : *++p) & 15), i--, p++;

    for ( ; i > 1; i -= 2) {
      uint32_t d = 10 * ((*p != '.' ? *p : *++p) & 15); p++;
      *xip++ = d + ((*p != '.' ? *p : *++p) & 15); p++;
    }

    if (i) *xip++ = 10 * ((*p != '.' ? *p : *++p) & 15), ex10--, dig++, p++;


    if (dig > STRSCAN_MAXDIG) {
      do {
 if ((*p != '.' ? *p : *++p) != '0') { xip[-1] |= 1; break; }
 p++;
      } while (--dig > STRSCAN_MAXDIG);
      dig = STRSCAN_MAXDIG;
    } else {
      while (ex10 > 0 && dig <= 18) *xip++ = 0, ex10 -= 2, dig += 2;
    }
  } else {
    ex10 = 0;
    xi[0] = 0;
  }


  if (dig <= 20 && ex10 == 0) {
    uint8_t *xis;
    uint64_t x = xi[0];
    double n;
    for (xis = xi+1; xis < xip; xis++) x = x * 100 + *xis;
    if (!(dig == 20 && (xi[0] > 18 || (int64_t)x >= 0))) {

      switch (fmt) {
      case 130:
 if (!(opt & STRSCAN_OPT_TONUM) && x < 0x80000000u+neg) {
   o->i = neg ? -(int32_t)x : (int32_t)x;
   return 130;
 }
 if (!(opt & STRSCAN_OPT_C)) { fmt = STRSCAN_NUM; goto plainnumber; }

      case 129:
 if ((x >> 32) != 0) return STRSCAN_ERROR;
 o->i = neg ? -(int32_t)x : (int32_t)x;
 return 129;
      case 131:
      case 128:
 o->u64 = neg ? (uint64_t)-(int64_t)x : x;
 return fmt;
      default:
      plainnumber:
 if ((int64_t)x < 0) break;
 n = (double)(int64_t)x;
 if (neg) n = -n;
 o->n = n;
 return fmt;
      }
    }
  }


  if (fmt == 130) {
    if ((opt & STRSCAN_OPT_C)) return STRSCAN_ERROR;
    fmt = STRSCAN_NUM;
  } else if (fmt > 130) {
    return STRSCAN_ERROR;
  }
  {
    uint32_t hi = 0, lo = (uint32_t)(xip-xi);
    int32_t ex2 = 0, idig = (int32_t)lo + (ex10 >> 1);

    lua_assert(lo > 0 && (ex10 & 1) == 0);


    if (idig > 310/2) { if (neg) setminfV(o); else setpinfV(o); return fmt; }
    else if (idig < -326/2) { o->n = neg ? -0.0 : 0.0; return fmt; }


    while (idig < 9 && idig < DLEN(lo, hi)) {
      uint32_t i, cy = 0;
      ex2 -= 6;
      for (i = DPREV(lo); ; i = DPREV(i)) {
 uint32_t d = (xi[i] << 6) + cy;
 cy = (((d >> 2) * 5243) >> 17); d = d - cy * 100;
 xi[i] = (uint8_t)d;
 if (i == hi) break;
 if (d == 0 && i == DPREV(lo)) lo = i;
      }
      if (cy) {
 hi = DPREV(hi);
 if (xi[DPREV(lo)] == 0) lo = DPREV(lo);
 else if (hi == lo) { lo = DPREV(lo); xi[DPREV(lo)] |= xi[lo]; }
 xi[hi] = (uint8_t)cy; idig++;
      }
    }


    while (idig > 9) {
      uint32_t i = hi, cy = 0;
      ex2 += 6;
      do {
 cy += xi[i];
 xi[i] = (cy >> 6);
 cy = 100 * (cy & 0x3f);
 if (xi[i] == 0 && i == hi) hi = DNEXT(hi), idig--;
 i = DNEXT(i);
      } while (i != lo);
      while (cy) {
 if (hi == lo) { xi[DPREV(lo)] |= 1; break; }
 xi[lo] = (cy >> 6); lo = DNEXT(lo);
 cy = 100 * (cy & 0x3f);
      }
    }


    {
      uint64_t x = xi[hi];
      uint32_t i;
      for (i = DNEXT(hi); --idig > 0 && i != lo; i = DNEXT(i))
 x = x * 100 + xi[i];
      if (i == lo) {
 while (--idig >= 0) x = x * 100;
      } else {
 x <<= 1; ex2--;
 do {
   if (xi[i]) { x |= 1; break; }
   i = DNEXT(i);
 } while (i != lo);
      }
      strscan_double(x, o, ex2, neg);
    }
  }
  return fmt;
}
