
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static void
ata_string(uint8_t *dest, const char *src, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (*src)
   dest[i ^ 1] = (uint8_t) *src++;
  else
   dest[i ^ 1] = ' ';
 }
}
