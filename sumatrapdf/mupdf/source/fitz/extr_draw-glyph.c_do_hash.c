
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned do_hash(unsigned char *s, int len)
{
 unsigned val = 0;
 int i;
 for (i = 0; i < len; i++)
 {
  val += s[i];
  val += (val << 10);
  val ^= (val >> 6);
 }
 val += (val << 3);
 val ^= (val >> 11);
 val += (val << 15);
 return val;
}
