
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

int fz_atoi(const char *s)
{
 if (s == ((void*)0))
  return 0;
 return atoi(s);
}
