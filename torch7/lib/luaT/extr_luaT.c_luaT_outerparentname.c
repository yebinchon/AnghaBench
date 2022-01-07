
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strcspn (char const*,char*) ;
 int strncpy (char*,char const*,size_t) ;

int luaT_outerparentname(const char *tname, char *parent_name)
{
  char chars[] = {'.', '\0'};
  size_t idx;
  idx = strcspn(tname, chars);
  strncpy(parent_name, tname, idx);
  parent_name[idx] = '\0';
  return tname[idx] == '.';
}
