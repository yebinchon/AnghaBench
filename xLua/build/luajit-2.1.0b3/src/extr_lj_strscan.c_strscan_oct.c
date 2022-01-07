
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int u64; int i; } ;
typedef TYPE_1__ TValue ;
typedef int StrScanFmt ;


 int STRSCAN_ERROR ;





__attribute__((used)) static StrScanFmt strscan_oct(const uint8_t *p, TValue *o,
         StrScanFmt fmt, int32_t neg, uint32_t dig)
{
  uint64_t x = 0;


  if (dig > 22 || (dig == 22 && *p > '1')) return STRSCAN_ERROR;
  while (dig-- > 0) {
    if (!(*p >= '0' && *p <= '7')) return STRSCAN_ERROR;
    x = (x << 3) + (*p++ & 7);
  }


  switch (fmt) {
  case 130:
    if (x >= 0x80000000u+neg) fmt = 129;

  case 129:
    if ((x >> 32)) return STRSCAN_ERROR;
    o->i = neg ? -(int32_t)x : (int32_t)x;
    break;
  default:
  case 131:
  case 128:
    o->u64 = neg ? (uint64_t)-(int64_t)x : x;
    break;
  }
  return fmt;
}
