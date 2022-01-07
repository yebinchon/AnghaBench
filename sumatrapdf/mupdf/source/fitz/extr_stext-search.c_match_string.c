
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chartocanon (int*,char const*) ;

__attribute__((used)) static const char *match_string(const char *h, const char *n)
{
 int hc, nc;
 const char *e = h;
 h += chartocanon(&hc, h);
 n += chartocanon(&nc, n);
 while (hc == nc)
 {
  e = h;
  if (hc == ' ')
   do
    h += chartocanon(&hc, h);
   while (hc == ' ');
  else
   h += chartocanon(&hc, h);
  if (nc == ' ')
   do
    n += chartocanon(&nc, n);
   while (nc == ' ');
  else
   n += chartocanon(&nc, n);
 }
 return nc == 0 ? e : ((void*)0);
}
