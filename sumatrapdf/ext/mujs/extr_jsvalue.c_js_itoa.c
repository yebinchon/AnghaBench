
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *js_itoa(char *out, int v)
{
 char buf[32], *s = out;
 unsigned int a;
 int i = 0;
 if (v < 0) {
  a = -v;
  *s++ = '-';
 } else {
  a = v;
 }
 while (a) {
  buf[i++] = (a % 10) + '0';
  a /= 10;
 }
 if (i == 0)
  buf[i++] = '0';
 while (i > 0)
  *s++ = buf[--i];
 *s = 0;
 return out;
}
