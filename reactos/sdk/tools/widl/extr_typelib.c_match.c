
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int match(const char*n, const char*m)
{
  if (!n) return 0;
  return !strcmp(n, m);
}
