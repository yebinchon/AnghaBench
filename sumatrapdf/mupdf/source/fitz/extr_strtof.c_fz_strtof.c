
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ERANGE ;
 float INFINITY ;
 scalar_t__ NAN ;
 int SET_TAILPTR (char**,char const*) ;
 int errno ;
 float scale_integer_to_float (int,int,int) ;
 scalar_t__ starts_with (char const**,char*) ;

float
fz_strtof(const char *string, char **tailptr)
{

 const char *s;
 uint32_t M = 0;
 int N = 0;

 int decimal_digits = 0;
 int negative = 0;
 const char *number_start = 0;


 s = string;
 while (*s == ' ' || *s == '\f' || *s == '\n' || *s == '\r' || *s == '\t' || *s == '\v')
  ++s;


 if (*s == '+')
  ++s;
 if (*s == '-')
 {
  negative = 1;
  ++s;
 }
 number_start = s;

 while (*s >= '0' && *s <= '9')
 {
  if (decimal_digits)
  {
   if (decimal_digits < 9)
   {
    ++decimal_digits;
    M = M * 10 + *s - '0';
   }

   else if (N < 1000)
    ++N;
  }
  else if (*s > '0')
  {
   M = *s - '0';
   ++decimal_digits;
  }
  ++s;
 }


 if (*s == '.')
  ++s;


 while (*s >= '0' && *s <= '9')
 {
  if (decimal_digits < 9)
  {
   if (decimal_digits || *s > '0')
   {
    ++decimal_digits;
    M = M * 10 + *s - '0';
   }
   --N;
  }
  ++s;
 }
 if ((s == number_start + 1 && *number_start == '.') || number_start == s)
 {

  s = number_start;
  if (starts_with(&s, "INFINITY") || starts_with(&s, "INF"))
  {
   errno = ERANGE;
   SET_TAILPTR(tailptr, s);
   return negative ? -INFINITY : +INFINITY;
  }
  else if (starts_with(&s, "NAN"))
  {
   SET_TAILPTR(tailptr, s);
   return (float)NAN;
  }
  else
  {
   SET_TAILPTR(tailptr, string);
   return 0.f;
  }
 }


 if (*s == 'e' || *s == 'E')
 {
  int exp_negative = 0;
  int exp = 0;
  const char *int_start;
  const char *exp_start = s;

  ++s;
  if (*s == '+')
   ++s;
  else if (*s == '-')
  {
   ++s;
   exp_negative = 1;
  }
  int_start = s;

  while (*s >= '0' && *s <= '9')
  {

   if (exp < 100)
    exp = exp * 10 + *s - '0';
   ++s;
  }
  if (exp_negative)
   exp = -exp;
  if (s == int_start)

   s = exp_start;
  else
   N += exp;
 }

 SET_TAILPTR(tailptr, s);
 return scale_integer_to_float(M, N, negative);
}
