
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
psd_invert_buffer(unsigned char *buffer, int size)
{
 int k;

 for (k = 0; k < size; k++)
  buffer[k] = 255 - buffer[k];
}
