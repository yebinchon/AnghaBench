
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ isoctdigit (char const) ;

__attribute__((used)) static inline int64_t otoi(const char *s)
{
 int64_t value = 0;

 while (*s && isoctdigit(*s))
 {
  value *= 8;
  value += (*s) - '0';
  s++;
 }

 return value;
}
