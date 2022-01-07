
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
fz_unpack_line(unsigned char *dp, unsigned char *sp, int w, int n)
{
 int len = w * n;
 while (len--)
  *dp++ = *sp++;
}
