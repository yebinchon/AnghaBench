
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cbz_isdigit (char const) ;
 int cbz_toupper (int ) ;

__attribute__((used)) static inline int
cbz_strnatcmp(const char *a, const char *b)
{
 int x, y;

 while (*a || *b)
 {
  if (cbz_isdigit(*a) && cbz_isdigit(*b))
  {
   x = *a++ - '0';
   while (cbz_isdigit(*a))
    x = x * 10 + *a++ - '0';
   y = *b++ - '0';
   while (cbz_isdigit(*b))
    y = y * 10 + *b++ - '0';
  }
  else
  {
   x = cbz_toupper(*a++);
   y = cbz_toupper(*b++);
  }
  if (x < y)
   return -1;
  if (x > y)
   return 1;
 }

 return 0;
}
