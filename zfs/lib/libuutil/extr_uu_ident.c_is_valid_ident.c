
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ALPHA (char) ;
 scalar_t__ IS_DIGIT (char) ;

__attribute__((used)) static int
is_valid_ident(const char *s, const char *e, int allowdot)
{
 char c;

 if (s >= e)
  return (0);

 c = *s++;
 if (!IS_ALPHA(c))
  return (0);

 while (s < e && (c = *s++) != 0) {
  if (IS_ALPHA(c) || IS_DIGIT(c) || c == '-' || c == '_' ||
      (allowdot && c == '.'))
   continue;
  return (0);
 }
 return (1);
}
