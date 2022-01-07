
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEFT ;
 int ZEROPAD ;

__attribute__((used)) static char*
string(char* buf, char* end, const char* s, int len, int field_width, int precision, int flags)
{
 int i;
    char c;

    c = (flags & ZEROPAD) ? '0' : ' ';

 if (s == ((void*)0))
 {
  s = "<NULL>";
  len = 6;
 }
 else
 {
  if (len == -1)
  {
   len = 0;
   while ((unsigned int)len < (unsigned int)precision && s[len])
    len++;
  }
  else
  {
   if ((unsigned int)len > (unsigned int)precision)
    len = precision;
  }
 }
 if (!(flags & LEFT))
  while (len < field_width--)
  {
   if (buf <= end)
    *buf = c;
   ++buf;
  }
 for (i = 0; i < len; ++i)
 {
  if (buf <= end)
   *buf = *s++;
  ++buf;
 }
 while (len < field_width--)
 {
  if (buf <= end)
   *buf = ' ';
  ++buf;
 }
 return buf;
}
