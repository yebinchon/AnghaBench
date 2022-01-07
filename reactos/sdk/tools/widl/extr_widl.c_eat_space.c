
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char *eat_space(char *s)
{
  while (isspace((unsigned char) *s))
    ++s;
  return s;
}
