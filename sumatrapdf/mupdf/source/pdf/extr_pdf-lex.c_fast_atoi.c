
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fast_atoi(char *s)
{
 int neg = 0;
 int i = 0;

 while (*s == '-')
 {
  neg = 1;
  ++s;
 }
 while (*s == '+')
 {
  ++s;
 }

 while (*s >= '0' && *s <= '9')
 {

  i = i * 10 + (*s - '0');
  ++s;
 }

 return neg ? -i : i;
}
