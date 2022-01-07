
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;



__attribute__((used)) static size_t
input_split2(u_int c, u_char *dst)
{
 if (c > 0x7f) {
  dst[0] = (c >> 6) | 0xc0;
  dst[1] = (c & 0x3f) | 0x80;
  return (2);
 }
 dst[0] = c;
 return (1);
}
