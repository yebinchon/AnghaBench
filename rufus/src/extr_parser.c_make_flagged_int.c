
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static size_t make_flagged_int(unsigned long value, uint8_t *buf, size_t buf_len)
{
 BOOL more = FALSE;
 int shift;

 for (shift = 28; shift > 0; shift -= 7) {
  if (more || value >= ((unsigned long)1 << shift)) {
   buf[buf_len++] = (uint8_t) (0x80 | (value >> shift));
   value -= (value >> shift) << shift;
   more = TRUE;
  }
 }
 buf[buf_len++] = (uint8_t) value;
 return buf_len;
}
