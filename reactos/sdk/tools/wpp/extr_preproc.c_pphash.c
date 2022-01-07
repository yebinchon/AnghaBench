
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHKEY ;

__attribute__((used)) static int pphash(const char *str)
{
 int sum = 0;
 while(*str)
  sum += *str++;
 return sum % HASHKEY;
}
