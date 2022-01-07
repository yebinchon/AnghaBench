
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint8_t *libdef_uleb128(uint8_t *p, uint32_t *vv)
{
  uint32_t v = *p++;
  if (v >= 0x80) {
    int sh = 0; v &= 0x7f;
    do { v |= ((*p & 0x7f) << (sh += 7)); } while (*p++ >= 0x80);
  }
  *vv = v;
  return p;
}
