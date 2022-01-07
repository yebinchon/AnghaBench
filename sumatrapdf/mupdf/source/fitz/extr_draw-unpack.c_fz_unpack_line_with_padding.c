
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
fz_unpack_line_with_padding(unsigned char *dp, unsigned char *sp, int w, int n)
{
 int x, k;

 for (x = 0; x < w; x++)
 {
  for (k = 0; k < n; k++)
   *dp++ = *sp++;
  *dp++ = 255;
 }
}
