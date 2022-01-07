
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
tiff_swap_byte_order(unsigned char *buf, int n)
{
 int i, t;
 for (i = 0; i < n; i++)
 {
  t = buf[i * 2 + 0];
  buf[i * 2 + 0] = buf[i * 2 + 1];
  buf[i * 2 + 1] = t;
 }
}
