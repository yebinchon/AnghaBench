
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int i; int u64; } ;
typedef TYPE_1__ TValue ;
typedef int StrScanFmt ;


 int STRSCAN_ERROR ;


 int STRSCAN_NUM ;
 int STRSCAN_OPT_C ;
 int STRSCAN_OPT_TONUM ;


 int U64x (int ,int) ;
 int c0000000 ;
 int strscan_double (int,TYPE_1__*,int,int) ;

__attribute__((used)) static StrScanFmt strscan_hex(const uint8_t *p, TValue *o,
         StrScanFmt fmt, uint32_t opt,
         int32_t ex2, int32_t neg, uint32_t dig)
{
  uint64_t x = 0;
  uint32_t i;


  for (i = dig > 16 ? 16 : dig ; i; i--, p++) {
    uint32_t d = (*p != '.' ? *p : *++p); if (d > '9') d += 9;
    x = (x << 4) + (d & 15);
  }


  for (i = 16; i < dig; i++, p++)
    x |= ((*p != '.' ? *p : *++p) != '0'), ex2 += 4;


  switch (fmt) {
  case 130:
    if (!(opt & STRSCAN_OPT_TONUM) && x < 0x80000000u+neg) {
      o->i = neg ? -(int32_t)x : (int32_t)x;
      return 130;
    }
    if (!(opt & STRSCAN_OPT_C)) { fmt = STRSCAN_NUM; break; }

  case 129:
    if (dig > 8) return STRSCAN_ERROR;
    o->i = neg ? -(int32_t)x : (int32_t)x;
    return 129;
  case 131:
  case 128:
    if (dig > 16) return STRSCAN_ERROR;
    o->u64 = neg ? (uint64_t)-(int64_t)x : x;
    return fmt;
  default:
    break;
  }


  if ((x & U64x(c0000000,0000000))) { x = (x >> 2) | (x & 3); ex2 += 2; }
  strscan_double(x, o, ex2, neg);
  return fmt;
}
