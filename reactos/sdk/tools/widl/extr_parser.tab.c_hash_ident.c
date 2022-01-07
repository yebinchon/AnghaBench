
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHMAX ;

__attribute__((used)) static int hash_ident(const char *name)
{
  const char *p = name;
  int sum = 0;

  while (*p) {
    sum += *p;
    p++;
  }
  return sum & (HASHMAX-1);
}
