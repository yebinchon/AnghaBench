
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int atoll (char const*) ;

int64_t fz_atoi64(const char *s)
{
 if (s == ((void*)0))
  return 0;
 return atoll(s);
}
