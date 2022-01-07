
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct utf8_data {scalar_t__ size; scalar_t__ width; } ;
typedef size_t ssize_t ;



u_int
utf8_strwidth(const struct utf8_data *s, ssize_t n)
{
 ssize_t i;
 u_int width;

 width = 0;
 for (i = 0; s[i].size != 0; i++) {
  if (n != -1 && n == i)
   break;
  width += s[i].width;
 }
 return (width);
}
