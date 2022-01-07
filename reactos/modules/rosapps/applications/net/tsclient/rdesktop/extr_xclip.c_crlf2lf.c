
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;
typedef int uint32 ;



__attribute__((used)) static void
crlf2lf(uint8 * data, uint32 * length)
{
 uint8 *dst, *src;
 src = dst = data;
 while (src < data + *length)
 {
  if (*src != '\x0d')
   *dst++ = *src;
  src++;
 }
 *length = dst - data;
}
