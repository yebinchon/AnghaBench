
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline bool
argv_find_rev_flag(const char *argv[], size_t argc, const char *arg, size_t arglen,
     size_t *search_offset, bool *with_graph, bool *with_reflog)
{
 int i;

 for (i = 0; i < argc; i++) {
  const char *flag = argv[i];
  size_t flaglen = strlen(flag);

  if (flaglen > arglen || strncmp(arg, flag, flaglen))
   continue;

  if (search_offset)
   *search_offset = flaglen;
  else if (flaglen != arglen && flag[flaglen - 1] != '=')
   continue;

  if (with_graph)
   *with_graph = 0;
  if (with_reflog)
   *with_reflog = 1;

  return 1;
 }

 return 0;
}
