
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_assert (int) ;
 char* g_strdup (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static inline char *
hb_test_normalize_path (const char *path)
{
  char *s, *p;

  g_assert (0 == strncmp (path, "test_", 5));
  path += 4;

  s = g_strdup (path);
  for (p = s; *p; p++)
    if (*p == '_')
      *p = '/';

  return s;
}
