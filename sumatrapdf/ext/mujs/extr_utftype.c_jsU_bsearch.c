
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;



__attribute__((used)) static const Rune *
bsearch(Rune c, const Rune *t, int n, int ne)
{
 const Rune *p;
 int m;

 while(n > 1) {
  m = n/2;
  p = t + m*ne;
  if(c >= p[0]) {
   t = p;
   n = n-m;
  } else
   n = m;
 }
 if(n && c >= t[0])
  return t;
 return 0;
}
