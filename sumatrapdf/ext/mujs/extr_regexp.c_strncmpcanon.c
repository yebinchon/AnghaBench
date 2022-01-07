
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 int canon (int ) ;
 int chartorune (int *,char const*) ;

__attribute__((used)) static int strncmpcanon(const char *a, const char *b, int n)
{
 Rune ra, rb;
 int c;
 while (n--) {
  if (!*a) return -1;
  if (!*b) return 1;
  a += chartorune(&ra, a);
  b += chartorune(&rb, b);
  c = canon(ra) - canon(rb);
  if (c)
   return c;
 }
 return 0;
}
