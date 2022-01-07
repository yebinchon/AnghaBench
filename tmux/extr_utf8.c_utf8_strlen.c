
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {scalar_t__ size; } ;



size_t
utf8_strlen(const struct utf8_data *s)
{
 size_t i;

 for (i = 0; s[i].size != 0; i++)
               ;
 return (i);
}
