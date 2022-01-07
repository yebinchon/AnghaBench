
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scan_digit (char const) ;

__attribute__((used)) static int
scan_num(const char** sp, const char* send)
{
  const char* s = *sp;
  int n = 0;

  while (s < send) {
    int i = scan_digit(*s);
    if (i>9) {
      if (s == *sp) return -1;
      *sp = s;
      return n;
    }
    s++;
    n = 10*n + i;
  }
  *sp = s;
  return n;
}
