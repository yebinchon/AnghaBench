
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const* const) ;
 scalar_t__ isupper (int) ;
 int tolower (int) ;

int
StrToBool(const char *const s)
{
 int c;
 int result;

 c = *s;
 if (isupper(c))
  c = tolower(c);
 result = 0;
 switch (c) {
  case 'f':

  case 'n':
   break;
  case 'o':
   c = (int) s[1];
   if (isupper(c))
    c = tolower(c);
   if (c == 'f')
    break;

  case 't':

  case 'y':
   result = 1;
   break;
  default:
   if (atoi(s) != 0)
    result = 1;
 }
 return result;
}
