
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CHAR_BIT ;

__attribute__((used)) static int __isleadbyte(int i, unsigned char *ctable) {
  unsigned char c = (unsigned char)i;
  return (ctable[c / CHAR_BIT] & (0x01 << c % CHAR_BIT));
}
