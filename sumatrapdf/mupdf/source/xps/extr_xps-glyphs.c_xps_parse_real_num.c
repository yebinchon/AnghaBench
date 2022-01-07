
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fz_strtof (char*,char**) ;

__attribute__((used)) static char *
xps_parse_real_num(char *s, float *number, int *override)
{
 char *tail;
 float v;
 v = fz_strtof(s, &tail);
 *override = tail != s;
 if (*override)
  *number = v;
 return tail;
}
