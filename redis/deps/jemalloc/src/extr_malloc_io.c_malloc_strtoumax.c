
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uintmax_t ;
typedef scalar_t__ intmax_t ;


 int EINVAL ;
 int ERANGE ;
 unsigned int UINTMAX_MAX ;
 int set_errno (int ) ;

uintmax_t
malloc_strtoumax(const char *restrict nptr, char **restrict endptr, int base) {
 uintmax_t ret, digit;
 unsigned b;
 bool neg;
 const char *p, *ns;

 p = nptr;
 if (base < 0 || base == 1 || base > 36) {
  ns = p;
  set_errno(EINVAL);
  ret = UINTMAX_MAX;
  goto label_return;
 }
 b = base;


 neg = 0;
 while (1) {
  switch (*p) {
  case '\t': case '\n': case '\v': case '\f': case '\r': case ' ':
   p++;
   break;
  case '-':
   neg = 1;

  case '+':
   p++;

  default:
   goto label_prefix;
  }
 }


 label_prefix:





 ns = p;
 if (*p == '0') {
  switch (p[1]) {
  case '0': case '1': case '2': case '3': case '4': case '5':
  case '6': case '7':
   if (b == 0) {
    b = 8;
   }
   if (b == 8) {
    p++;
   }
   break;
  case 'X': case 'x':
   switch (p[2]) {
   case '0': case '1': case '2': case '3': case '4':
   case '5': case '6': case '7': case '8': case '9':
   case 'A': case 'B': case 'C': case 'D': case 'E':
   case 'F':
   case 'a': case 'b': case 'c': case 'd': case 'e':
   case 'f':
    if (b == 0) {
     b = 16;
    }
    if (b == 16) {
     p += 2;
    }
    break;
   default:
    break;
   }
   break;
  default:
   p++;
   ret = 0;
   goto label_return;
  }
 }
 if (b == 0) {
  b = 10;
 }


 ret = 0;
 while ((*p >= '0' && *p <= '9' && (digit = *p - '0') < b)
     || (*p >= 'A' && *p <= 'Z' && (digit = 10 + *p - 'A') < b)
     || (*p >= 'a' && *p <= 'z' && (digit = 10 + *p - 'a') < b)) {
  uintmax_t pret = ret;
  ret *= b;
  ret += digit;
  if (ret < pret) {

   set_errno(ERANGE);
   ret = UINTMAX_MAX;
   goto label_return;
  }
  p++;
 }
 if (neg) {
  ret = (uintmax_t)(-((intmax_t)ret));
 }

 if (p == ns) {

  set_errno(EINVAL);
  ret = UINTMAX_MAX;
  goto label_return;
 }

label_return:
 if (endptr != ((void*)0)) {
  if (p == ns) {

   *endptr = (char *)nptr;
  } else {
   *endptr = (char *)p;
  }
 }
 return ret;
}
