
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
skip_namespace_prefix(char *mark, char *p)
{
 char *ns;

 for (ns = mark; ns < p - 1; ++ns)
  if (*ns == ':')
   mark = ns + 1;

 return mark;
}
