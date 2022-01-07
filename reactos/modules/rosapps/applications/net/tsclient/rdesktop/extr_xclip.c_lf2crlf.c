
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;
typedef int uint32 ;


 char* xmalloc (int) ;

__attribute__((used)) static uint8 *
lf2crlf(uint8 * data, uint32 * length)
{
 uint8 *result, *p, *o;


 result = xmalloc(*length * 2);

 p = data;
 o = result;

 while (p < data + *length)
 {
  if (*p == '\x0a')
   *o++ = '\x0d';
  *o++ = *p++;
 }
 *length = o - result;


 *o++ = '\0';

 return result;
}
