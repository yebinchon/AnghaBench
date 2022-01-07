
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAXUNICODE ;

__attribute__((used)) static const char *utf8_decode (const char *o, int *val) {
  static const unsigned int limits[] = {0xFF, 0x7F, 0x7FF, 0xFFFF};
  const unsigned char *s = (const unsigned char *)o;
  unsigned int c = s[0];
  unsigned int res = 0;
  if (c < 0x80)
    res = c;
  else {
    int count = 0;
    while (c & 0x40) {
      int cc = s[++count];
      if ((cc & 0xC0) != 0x80)
        return ((void*)0);
      res = (res << 6) | (cc & 0x3F);
      c <<= 1;
    }
    res |= ((c & 0x7F) << (count * 5));
    if (count > 3 || res > MAXUNICODE || res <= limits[count])
      return ((void*)0);
    s += count;
  }
  if (val) *val = res;
  return (const char *)s + 1;
}
