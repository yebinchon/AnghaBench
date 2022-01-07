
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNVIS_END ;



 int const unvis (char*,char,int*,int ) ;

int
strunvis(char *dst, const char *src)
{
 char c;
 char *start = dst;
 int state = 0;

 while ((c = *src++)) {
 again:
  switch (unvis(dst, c, &state, 0)) {
  case 129:
   dst++;
   break;
  case 128:
   dst++;
   goto again;
  case 0:
  case 130:
   break;
  default:
   *dst = '\0';
   return (-1);
  }
 }
 if (unvis(dst, c, &state, UNVIS_END) == 129)
  dst++;
 *dst = '\0';
 return (dst - start);
}
