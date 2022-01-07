
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int UNVIS_END ;



 int const unvis (char*,char,int*,int ) ;

ssize_t
strnunvis(char *dst, const char *src, size_t sz)
{
 char c, p;
 char *start = dst, *end = dst + sz - 1;
 int state = 0;

 if (sz > 0)
  *end = '\0';
 while ((c = *src++)) {
 again:
  switch (unvis(&p, c, &state, 0)) {
  case 129:
   if (dst < end)
    *dst = p;
   dst++;
   break;
  case 128:
   if (dst < end)
    *dst = p;
   dst++;
   goto again;
  case 0:
  case 130:
   break;
  default:
   if (dst <= end)
    *dst = '\0';
   return (-1);
  }
 }
 if (unvis(&p, c, &state, UNVIS_END) == 129) {
  if (dst < end)
   *dst = p;
  dst++;
 }
 if (dst <= end)
  *dst = '\0';
 return (dst - start);
}
