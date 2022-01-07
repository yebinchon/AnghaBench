
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char) ;

unsigned char * _mbsrev(unsigned char *s)
{
 unsigned char *e;
 unsigned char a;
 unsigned char *e2;
 e=s;
 while (*e) {
  if ( _ismbblead(*e) ) {
   a = *e;
   e2 = e;
   *e2 = *++e;
   if ( *e == 0 )
    break;
   *e = a;
  }
  e++;
 }
 while (s<e) {
  a=*s;
  *s=*e;
  *e=a;
  s++;
  e--;
 }


 return s;
}
